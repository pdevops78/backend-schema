source /data/secrets.txt
cat  /data/secrets.txt
echo
env

if [ -z "${DB_HOST}" ]; then
  echo Environment variable is missing
  exit 1
fi

if [ -z "${NEW_RELIC_APP_NAME}" ]; then
  echo Environment variable is missing
  exit 1
fi

if [ -z "${NEW_RELIC_LICENSE_KEY}" ]; then
  echo Environment variable is missing
  exit 1
fi

node  /app/index.js

git clone https://github.com/pdevops78/${project_name}-${component}
cd ${project_name}-${component}
echo ${project_name}-${component}





