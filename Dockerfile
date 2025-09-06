FROM                         docker.io/redhat/ubi8
RUN                          dnf install mongodb-mongosh mysql git -y
RUN                          mkdir /app
COPY                         run.sh /app/run.sh
ADD                          https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem /app/rds-combined-ca-bundle.pem
ENTRYPOINT                   ["bash","/app/run.sh"]
