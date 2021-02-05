--Data Model
--Tables
--Basic type columns(int, float, boolean)
--Complex type: List/ Map (associate array)
--Partitions
--Buckets

CREATE TABLE sales( id INT, items ARRAY<STRUCT<id:INT,name:STRING>) 
PARITIONED BY (ds STRING) 
CLUSTERED BY (id) INTO 32 BUCKETS;

SELECT id 
FROM sales TABLESAMPLE (BUCKET 1 OUT OF 32)


--Programming for BIG Data

--Hive query operations
--SELECT Syntax
--SELECT example

SELECT [ALL | DISTINCT] select_exper, select_exper
FROM table_reference 
[WHERE where_condition]
[GROUP BY col_list]
[CLUSTER BY col_list | [DISTRIBUTE BY col_list] [SORT BY col_list]
]
[LIMIT number]

--DATA Manipulations
--Load syntax

LOAD DATA [LOCAL] INPATH 'filepath' [OVERWRITE] INTO TABLE tablename [PARTITION]
(partcol1=val1, partcol2=val2)]

--insert syntax
INSERT OVERWRITE [LOCAL] DIRECTORY directory1 SELECT ... FROM


