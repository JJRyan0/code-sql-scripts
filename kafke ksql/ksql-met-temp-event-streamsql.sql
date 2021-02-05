
#Creating Kafka topic streams with Ksql 

#ksqlDB uses Apache Kafka as its underlying storage service. Data is stored into topics, which are broken
#down into partitions. ksqlDB’s streams and tables are built upon Kafka topics, and many KSQL
#statements require a working knowledge of topics and partitions. The below Ksql script demonstrates how to create an event stream in kafka 
#and join the stream with anouther table to enrich data.

#Create table that holds the met station name and status if active or inactive.
CREATE TABLE met_station
	station_name VARCHAR PRIMARY KEY,
	station_status VARCHAR
) WITH (
	KAFKA_TOPIC = 'ksqldb.met_station', #references the topic 
	PARTITIONS = 4 #number of partitions a topic is diveded into.
	VALUE_FORMAT = 'DELIMITED'
);

insert into users (station_name, station_hieght, station_status) values ('Crown Hall', 'active');
insert into users (station_name, station_hieght, station_status) values ('Dub Airport', 'active');
insert into users (station_name, station_hieght, station_status) values ('Shannon', 'inactive');
insert into users (station_name, station_hieght, station_status) values ('Cork', null);
insert into users (station_name, station_hieght, station_status) values ('Ruthland', 'active');
insert into users (station_name, station_hieght, station_status) values ('Ferne', 'inactive');

# Create an event stream that has data on tempurature readings from a number of met stations

CREATE STREAM met_temps(
	station_name VARCHAR KEY
	month NUMBER,
	maxtp DOUBLE,
	mintp DOUBLE,
	mnmax DOUBLE,
	mnmin DOUBLE,
	sun DOUBLE,
	latitude DOUBLE
	longitude DOUBLE

	) WITH (
		KAFKA_TOPIC='ksqldb.met_temps',
		VALUE_FORMAT='DELIMITED',
		partitions = 4
	);

	INSERT INTO met_temps(station_name, month, maxtp, mintp, mnmax, mnmin, sun, latitude, longitude ) VALUES ('Dub Airport', 1, 12.1, -3.5, 5.6, 0.2, 66.5, 53.428, -6.241);
	INSERT INTO met_temps(station_name, month, maxtp, mintp, mnmax, mnmin, sun, latitude, longitude ) VALUES ('Crown Hall', 3, 15.1, -1.9, 9.6, 1.2, 50.4, 54.528, -6.546);
	INSERT INTO met_temps(station_name, month, maxtp, mintp, mnmax, mnmin, sun, latitude, longitude ) VALUES ('Cork', 4, 16.8, 3.7, 12.6, 1.8, 45.5, 56.628, -6.346);
	INSERT INTO met_temps(station_name, month, maxtp, mintp, mnmax, mnmin, sun, latitude, longitude ) VALUES ('Shannon', 5, 20.4, 7.5, 9.6, 4.3, 30.5, 51.558, -6.991);
	INSERT INTO met_temps(station_name, month, maxtp, mintp, mnmax, mnmin, sun, latitude, longitude ) VALUES ('Ferne', 7, 33.1, 8.5, 6.6, 4.2, 57.5, 58.521, -6.041)
	INSERT INTO met_temps(station_name, month, maxtp, mintp, mnmax, mnmin, sun, latitude, longitude ) VALUES ('Ruthland', 2, 22.1, 3.5, 15.6, 0.9, 68.0, 53.500, -6.789);
	

# Join the met_temps stream with the met_station table to show all the temp readings enriched by the met station with "active"status.

SELECT met_temps.station_name, met_temps.month, met_temps.maxtp, met_station.station_status
FROM met_temps
LEFT JOIN met_station
ON met_temps.station_name = met_station.station_name
WHERE met_station.station_status = 'active'
EMIT CHANGES;
