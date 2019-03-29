import re

filepath = '/Users/kevenlemoing/Sites/perso/sqlserver_to_hive/data/sqlserver_export_schema.sql'
filter = ["CONSTRAINT","SET","GO","ASC","WITH",") ON","Script"," ON ", "ON PRIMARY","USE"]
lines_list = []
db_dict = dict()

## PART 1 - Extract SQL statements from the file
with open(filepath, encoding="utf-8", errors='ignore') as f2:
    a = f2.readlines()
    for line in a:
        line = re.sub('[^a-zA-Z\x5f ]', '', line)
        line = line.replace("dbo","")
        if not any(s in line for s in filter) and line != "":
            print(line)
            lines_list.append(line)

print (lines_list)

### Get substract of tables to test Hive syntax
#sub_list = lines_list[:17]
#print(sub_list)

## PART 2 - Compose dictionnaries
for i in range(len(lines_list)):
    if "CREATE TABLE" in lines_list[i]:
        current_table_name = lines_list[i].split("CREATE TABLE ")[1]
        table_dict = dict()
    else:
        field_name = lines_list[i].split(" ")[0]
        field_format = lines_list[i].split(" ")[1]
        if field_format == "datetime":
            field_format = "date"
        elif field_format == "nvarchar":
            field_format = "string"
        elif field_format == "bit":
            field_format = "string"
        elif field_format == "numeric":
            field_format = "int"
        elif field_format == "money":
            field_format = "decimal(18,2)"
        table_dict["{}".format(field_name)] = field_format
        print(table_dict)
        print("----------------table_dict------------------")
    db_dict["{}".format(current_table_name)] = table_dict
    print(db_dict)
    print("----------------db_dict------------------")

## PART 3 - Create DDLs
env = ["prd","mod"]
for j in range(len(env)):
    stg_filepath = '/Users/kevenlemoing/Sites/perso/sqlserver_to_hive/output/stg_{}.sql'.format(env[j])
    orc_filepath = '/Users/kevenlemoing/Sites/perso/sqlserver_to_hive/output/orc_{}.sql'.format(env[j])
    for tb_name, tb_fields in db_dict.items():
        head_stg = "CREATE EXTERNAL TABLE IF NOT EXISTS {}(".format(tb_name)
        head_orc = "CREATE TABLE IF NOT EXISTS {}(".format(tb_name)
        pk = list(tb_fields.keys())[0]
        fields = ""
        for field in db_dict[tb_name]:
            fields += "{} {},".format(field,db_dict[tb_name][field])
        fields = fields[:-1]

        body_stg = ") ROW FORMAT DELIMITED" \
              "FIELDS TERMINATED BY '\\073' " \
              "LINES TERMINATED BY '\\n' " \
              "LOCATION" \
              "'hdfs://hsspas610:8020/RSA/Staging/stg_{}_pr_ccs_no_claims/{}';".format(env[j],tb_name)

        body_orc = ",changed_timestamp timestamp) CLUSTERED BY ({}) " \
                   "INTO 1 BUCKETS " \
                   "ROW FORMAT SERDE " \
                   "'org.apache.hadoop.hive.ql.io.orc.OrcSerde' " \
                   "STORED AS INPUTFORMAT " \
                   "'org.apache.hadoop.hive.ql.io.orc.OrcInputFormat' " \
                   "OUTPUTFORMAT " \
                   "'org.apache.hadoop.hive.ql.io.orc.OrcOutputFormat' " \
                   "LOCATION " \
                   "'hdfs://hsspas610:8020/apps/hive/warehouse/{}_pr_ccs_no_claims.db/{}'" \
                   "TBLPROPERTIES ('transactional'='true');".format(pk,env[j],tb_name)

        stg = head_stg + fields + body_stg
        orc = head_orc + fields + body_orc

        stg_w = open(stg_filepath, "a")
        stg_w.write(stg+ "\n")
        stg_w.close()

        orc_w = open(orc_filepath, "a")
        orc_w.write(orc+ "\n")
        orc_w.close()

        print(stg)
        print ("-----------stg----------------")
        print(orc)
        print("-------------orc--------------")



