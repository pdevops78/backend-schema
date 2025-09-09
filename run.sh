source /data/secrets.txt
cat  /data/secrets.txt
echo
env

if [ -z "${DB_HOST}" ]; then
  echo Environment variable is missing
  exit 1
fi

if [ -z "${rds_name}" ]; then
  echo Environment variable is missing
  exit 1
fi

if [ -z "${rds_password}" ]; then
  echo Environment variable is missing
  exit 1
fi

if [ -z "${project_name}" ]; then
  echo Environment variable is missing
  exit 1
fi

if [ -z "${component}" ]; then
   echo Environment variable is missing
   exit 1
fi

git clone https://github.com/pdevops78/${project_name}-${component}
cd ${project_name}-${component}
echo ${project_name}-${component}
echo mysql -hmysql-dev.cvkemucwmc9p.us-east-1.rds.amazonaws.com -uadmin -pExpenseApp123 <schema/backend.sql

 mysql -hmysql-dev.cvkemucwmc9p.us-east-1.rds.amazonaws.com -uadmin -pExpenseApp123 <schema/backend.sql








