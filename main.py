import re

filepath = '/Users/kevenlemoing/Sites/perso/sqlserver_to_hive/data/sqlserver_export_schema.sql'
lines_list=[]
filter = ["CONSTRAINT","SET","GO","ASC","WITH",") ON","Script"," ON ", "ON PRIMARY","USE"]
lines_list = []
db_dict = dict()
table_dict = dict()
fields_dict = dict()

## PART 1 - Extract SQL statements from the file
with open(filepath, encoding="utf-8", errors='ignore') as f2:
    a = f2.readlines()
    for line in a:
        line = re.sub('[^a-zA-Z\x5f ]', '', line)
        line = line.replace("dbo","")
        if not any(s in line for s in filter) and line != "":
            lines_list.append(line)

print (lines_list)