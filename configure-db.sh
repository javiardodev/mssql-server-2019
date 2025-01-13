!/bin/bash

# wait for MSSQL server to start
# export STATUS=1
# i=0

# while [[ $STATUS -ne 0 ]] && [[ $i -lt 30 ]]; do
# 	i=$i+1
# 	/opt/mssql-tools18/bin/sqlcmd -t 1 -U sa -P $MSSQL_SA_PASSWORD -C -Q "select 1" >> /dev/null
# 	STATUS=$?
# done

# if [ $STATUS -ne 0 ]; then 
# 	echo "Error: MSSQL SERVER took more than thirty seconds to start up."
# 	exit 1
# fi

#echo "======= MSSQL SERVER STARTED ========" | tee -a ./config.log
# Run the setup script to create the DB and the schema in the DB
#/opt/mssql-tools18/bin/sqlcmd -S localhost -U sa -P $MSSQL_SA_PASSWORD -C -i ./db/setup-db.sql
#echo "======= MSSQL CONFIG COMPLETE =======" | tee -a ./config.log
#wait for the SQL Server to come up
sleep 30s

echo "======== MSSQL SERVER STARTED =========" 
echo " *******running set up script********* "
#run the setup script to create the DB and the schema in the DB
/opt/mssql-tools18/bin/sqlcmd -S mssql-server -U sa -P $MSSQL_SA_PASSWORD -C -d master -i ./db/setup-db.sql
echo "======== MSSQL CONFIG COMPLETE ========"