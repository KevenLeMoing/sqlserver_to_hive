import pyodbc
import pandas as pd

def change_string(string):
    modified_string = "{}-{}-{}".format(len(string), string.count('a'), string.count('e'))
    return modified_string

conn = pyodbc.connect("Driver={SQL Server Native Client 11.0};"
                      "Server=SEZPDB04\HSZPDB03;"
                      "Database=PR_CCS_NO_CLAIMS;"
                      "UID=CPS_NO_users;"
                      "PWD=HT_zig!29;"
                      "Trusted_Connection=no;")

cursor = conn.cursor()

a = cursor.execute('SELECT * FROM dbo.skadelidte')
rows = cursor.fetchall()
df = pd.DataFrame(columns = ["skadelidte_id", "claim_case_id","first_name",
                             "last_name","social_security","address","zip_code",
                             "city","telephone","email","account_number","source_system_id"])
for row in rows:
    df["skadelidte_id"] = row.SkadelidteId
    df["claim_case_id"] = row.ClaimCaseId
    df["first_name"] = row.FirstName
    df["last_name"] = row.LastName
    df["social_security"] = row.SocialSecurity
    df["address"] = row.Address
    df["zip_code"] = row.Zipcode
    df["city"] = row.City
    df["telephone"] = row.Telephone
    df["email"] = row.Email
    df["account_number"] = change_string(str(row.AccountNumber))
    df["source_system_id"] = row.SourceSystemId

print(df)