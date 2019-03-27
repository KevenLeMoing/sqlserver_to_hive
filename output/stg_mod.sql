CREATE EXTERNAL TABLE IF NOT EXISTS ActionHistory(ActionHistoryID bigint,ActionID int,ActionDetails string,UserID bigint,DateCreated date,UserTypeID int) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_mod_pr_ccs_no_claims/ActionHistory';
CREATE EXTERNAL TABLE IF NOT EXISTS ActionHistoryOld(ActionHistoryID bigint,ActionID int,ActionDetails string,UserID bigint,DateCreated date,UserTypeID int) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_mod_pr_ccs_no_claims/ActionHistoryOld';
CREATE EXTERNAL TABLE IF NOT EXISTS Actions(ActionID int,ActionName string) ROW FORMAT DELIMITEDFIELDS TERMINATED BY '\073' LINES TERMINATED BY '\n' LOCATION'hdfs://hsspas610:8020/RSA/Staging/stg_mod_pr_ccs_no_claims/Actions';
