
#John Joseph Ryan 02/03/2021

#Create statement to create a kafke stream called test
#with 4 partitions

CREATE STREAM test (
    name STRING KEY,
    favorite_food STRING
    last_name STRING
    favorite_drink STRING
    city STRING
    country STRING

  ) WITH (
     KAFKA_TOPIC='ksqldb.test',
     VALUE_FORMAT='DELIMITED',
     PARTITIONS=1
  );
INSERT INTO test (name, favorite_food) VALUES ('chuck', 'burritos');
INSERT INTO test (last_name, favorite_drink) VALUES ('murphy', 'Cola');
INSERT INTO test (city, country) VALUES ('Dublin', 'Ireland');


#Query Result Set


{
  "@type": "currentStatus",
  "statementText": "CREATE STREAM TEST (NAME STRING KEY, FAVORITE_FOOD STRING, LAST_NAME STRING, FAVORITE_DRINK STRING, CITY STRING, COUNTRY STRING) WITH (KAFKA_TOPIC='ksqldb.test', KEY_FORMAT='KAFKA', PARTITIONS=1, VALUE_FORMAT='DELIMITED');",
  "commandId": "stream/`TEST`/create",
  "commandStatus": {
    "status": "SUCCESS",
    "message": "Stream created",
