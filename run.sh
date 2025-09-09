source /data/secrets.txt
cat  /data/secrets.txt
echo
env



git clone https://github.com/pdevops78/${project_name}-${component}
cd ${project_name}-${component}
echo ${project_name}-${component}

mysql -h${DB_HOST} -u${RDS_DB_USER} -p${RDS_DB_PASSWORD} <schema/${component}.sql







