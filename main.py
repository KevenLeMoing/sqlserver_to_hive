import re

filepath = '/Users/kevenlemoing/Sites/perso/sqlserver_to_hive/data/sqlserver_export_schema.sql'
lines_list=[]
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
sub_list = lines_list[:17]
print(sub_list)

## PART 2 - Compose dictionnaries
for i in range(len(sub_list)):
    if "CREATE TABLE" in sub_list[i]:
        current_table_name = sub_list[i].split("CREATE TABLE ")[1]
        table_dict = dict()
    else:
        field_name = sub_list[i].split(" ")[0]
        field_format = sub_list[i].split(" ")[1]
        if field_format == "datetime":
            field_format = "date"
        elif field_format == "nvarchar":
            field_format = "string"
        elif field_format == "bit":
            field_format = "string"
        elif field_format == "numeric":
            field_format = "int"
        table_dict["{}".format(field_name)] = field_format
        print(table_dict)
        print("----------------table_dict------------------")
    db_dict["{}".format(current_table_name)] = table_dict
    print(db_dict)
    print("----------------table_dict------------------")


