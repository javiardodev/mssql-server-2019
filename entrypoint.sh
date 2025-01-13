!/bin/bash
#echo "MSSQL CONFIG COMPLETE" > ./config.log
# Start SQL Server
#/opt/mssql/bin/sqlservr &

# Start the script to create the DB and user
#/configure-db.sh

# Call extra command
#eval $1
echo " *******running sqlservr service********* "
#start SQL Server, start the script to create/setup the DB 
./configure-db.sh & /opt/mssql/bin/sqlservr