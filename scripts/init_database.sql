

use master;


IF Exists ( select 1 from sys.databases WHERE name = 'DataWarehouse')
  Begin
  ALTER DATABASE DataWarehouse set SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;

GO
CREATE DATABASE DataWarehouse;


use DataWarehouse;
go

CREATE SCHEMA bronze;

go

CREATE SCHEMA Silver;

go

CREATE SCHEMA Gold;
go
