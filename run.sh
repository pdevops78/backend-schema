source /data/secrets.txt
cat  /data/secrets.txt

if [ -z "${DB_HOST}" ]; then
  echo Environment variable is missing
  echo $DB_HOST
  exit 1
fi

if [ -z "${rds_username}" ]; then
  echo Environment variable is missing
  echo rds_username
  exit 1
fi

if [ -z "${rds_password}" ]; then
  echo Environment variable is missing
  echo $rds_password
  exit 1
fi

if [ -z "${project_name}" ]; then
  echo Environment variable is missing
  echo $project_name
  exit 1
fi

if [ -z "${component}" ]; then
   echo Environment variable is missing
   echo $component
   exit 1
fi

git clone https://github.com/pdevops78/${project_name}-${component}
cd ${project_name}-${component}
echo ${project_name}-${component}
echo mysql -hmysql-dev.cvkemucwmc9p.us-east-1.rds.amazonaws.com -uadmin -pExpenseApp123 <schema/backend.sql

echo mysql -h${DB_HOST} -u${rds_username} -p${rds_password}  <schema/backend.sql

mysql -hmysql-dev.cvkemucwmc9p.us-east-1.rds.amazonaws.com -uadmin -pExpenseApp123 <schema/backend.sql








