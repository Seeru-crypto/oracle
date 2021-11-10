



Drop commands:
```
DROP TABLE IF EXISTS newer_test_table;
DROP USER IF EXISTS newer_user
```

User Methods:
Create a user with a password and he cannot create his own DB´ or additional users:

    CREATE USER TEST WITH PASSWORD 'TEST';
    By default there are a lot of restrictions for new users

    DROP USER TEST

Role methods:
Use ALTER ROLE to change the attributes of a role, and DROP ROLE to remove a role. All the attributes specified by CREATE ROLE can be modified by later ALTER ROLE commands.

    CREATE ROLE <name> WITH  SUPERUSER;

    DROP ROLE <name>


    GRANT SELECT
    ON ALL TABLES
    IN SCHEMA "public"
    TO <role>;

Database commands:
\password [USERNAME]   securely change the password for a user
\dp     [PATTERN]      list table, view, and sequence access privileges
\dg[S+] [PATTERN]      list roles
\ddp    [PATTERN]      list default privileges

    To view all tables:
            \dt

    To check privilage info on a specific table:
        \z <table_name>

    display current connection info:
        \conninfo

      psql -h localhost -p 9876 -U PowerBI


      To connect to a DB
        psql -U '<DB_Name>'

      List all roles and users
        \du+

        SELECT * from chat


        DELETE FROM table_name WHERE condition;

Log:
# By deafult in a public schema all created roles can create objects in said schema.
To remove said privilige the following cmd has to be run.
REVOKE ALL ON schema public FROM public;

  **If a another user beside superuser has to create objects in schema, then grant the privilige via 
  GRANT ALL ON schema public TO foo_user;**

For testing:

        DROP TABLE IF EXISTS test_Table;
        CREATE TABLE test_Table(name varchar(255), age int);
        INSERT INTO test_Table VALUES ('Mike', 22);
        INSERT INTO test_Table VALUES ('Sam', 18);
        SELECT * from test_Table;



SELECT * FROM test_Table
DELETE FROM test_Table WHERE age = 18;
INSERT INTO test_Table VALUES ('Loki', 999);
CREATE TABLE newer_test_table (name varchar(255), age int);
CREATE USER newer_user WITH PASSWORD '1234';
Create ROLE newer_role;
CREATE DATABASE newer_database with OWNER = powerbi

[[Back-end md]]