#!/bin/bash
DATE=$(date +%H-%M-%S)
DBHOST=$1
DBPASS=$2
DBNAME=$3
AWS_KEY=$4
BUCKET_NAME=$5
mysqldump -u root -h $DBHOST -p$DBPASS $DBNAME > /tmp/db-$DATE.sql  && \

export AWS_ACCESS_KEY_ID=AKIAVAQ5DD7L4SGZS2NG  && \
export AWS_SECRET_ACCESS_KEY=$AWS_KEY  && \


aws s3 cp /tmp/db-$DATE.sql s3://$BUCKET_NAME/db-$DATE.sql
