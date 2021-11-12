# SQL snippets

Created SQL snippets
***
####  Net_store_SQL
Creating a Database schema
```
DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS passwords CASCADE;
DROP TABLE IF EXISTS items CASCADE;
DROP TABLE IF EXISTS storage CASCADE;


CREATE TABLE users
(
 "id"        int8 NOT NULL,
 user_name text NOT NULL,
 type      int8 NOT NULL,
 CONSTRAINT PK_users PRIMARY KEY ( "id" )
);
CREATE TABLE passwords
(
 "id"            int8 NOT NULL,
 password_hash text NOT NULL,
 CONSTRAINT PK_passwords PRIMARY KEY ( "id" ),
 CONSTRAINT FK_66 FOREIGN KEY ( "id" ) REFERENCES users ( "id" )
);
CREATE TABLE storage
(
 "id"            int8 NOT NULL,
 date_added    date NOT NULL,
 date_modified date NULL,
 parentid      int8 NOT NULL,
 user_id       int8 NOT NULL,
 name          text NOT NULL,
 CONSTRAINT PK_storage PRIMARY KEY ( "id" ),
 CONSTRAINT FK_40 FOREIGN KEY ( user_id ) REFERENCES users ( "id" )
);

CREATE TABLE items
(
 "id"            int8 NOT NULL,
 name          text NOT NULL,
 user_id       int8 NOT NULL,
 storage_id    int8 NOT NULL,
 description   text NULL,
 date_added    date NOT NULL,
 date_modified date NULL,
 CONSTRAINT PK_items PRIMARY KEY ( "id" ),
 CONSTRAINT FK_53 FOREIGN KEY ( user_id ) REFERENCES users ( "id" ),
 CONSTRAINT FK_56 FOREIGN KEY ( storage_id ) REFERENCES storage ( "id" )
);
CREATE INDEX fkIdx_54 ON items
(
 user_id
);
CREATE INDEX fkIdx_57 ON items
(
 storage_id
);
CREATE INDEX fkIdx_67 ON passwords
(
 "id"
);
CREATE INDEX fkIdx_41 ON storage
(
 user_id
);
```
***
#### rekursiivne_otsing

```
WITH RECURSIVE rec (id) as
   (
     SELECT storage.id, storage.storage_name, storage.date_added, storage.date_modified, storage.parent_id, storage.user_id
      from storage where parent_id=1
     UNION ALL
     SELECT storage.id, storage.storage_name, storage.date_added, storage.date_modified, storage.parent_id, storage.user_id
     FROM rec, storage where storage.parent_id = rec.id
     )
   SELECT *
   FROM rec;
```
***
#### Creating viewer user and role:
```
CREATE USER PowerBi WITH PASSWORD 'G5xHGVPFFy2XHAam';
CREATE ROLE viewer;
GRANT CONNECT ON DATABASE riigibot TO viewer;
GRANT USAGE ON SCHEMA public to viewer;
GRANT SELECT ON ALL TABLES IN SCHEMA public to viewer;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO viewer
GRANT viewer TO powerbi
```
***
#### Creating admin user and role;
```
CREATE ROLE admin WITH SUPERUSER;
CREATE USER admfredoj WITH PASSWORD 'b3xadF254HhTrcYN' CREATEROLE;
GRANT CONNECT ON DATABASE riigibot TO admin;
GRANT USAGE ON SCHEMA public to admin;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public to admin;
GRANT admin to admfredoj;
```