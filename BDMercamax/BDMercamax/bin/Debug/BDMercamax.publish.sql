/*
Script de implementación para BDMercamax

Una herramienta generó este código.
Los cambios realizados en este archivo podrían generar un comportamiento incorrecto y se perderán si
se vuelve a generar el código.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "BDMercamax"
:setvar DefaultFilePrefix "BDMercamax"
:setvar DefaultDataPath "C:\Users\maarc\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"
:setvar DefaultLogPath "C:\Users\maarc\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\"

GO
:on error exit
GO
/*
Detectar el modo SQLCMD y deshabilitar la ejecución del script si no se admite el modo SQLCMD.
Para volver a habilitar el script después de habilitar el modo SQLCMD, ejecute lo siguiente:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'El modo SQLCMD debe estar habilitado para ejecutar correctamente este script.';
        SET NOEXEC ON;
    END


GO
USE [master];


GO

IF (DB_ID(N'$(DatabaseName)') IS NOT NULL) 
BEGIN
    ALTER DATABASE [$(DatabaseName)]
    SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE [$(DatabaseName)];
END

GO
PRINT N'Creando la base de datos $(DatabaseName)...'
GO
CREATE DATABASE [$(DatabaseName)]
    ON 
    PRIMARY(NAME = [$(DatabaseName)], FILENAME = N'$(DefaultDataPath)$(DefaultFilePrefix)_Primary.mdf')
    LOG ON (NAME = [$(DatabaseName)_log], FILENAME = N'$(DefaultLogPath)$(DefaultFilePrefix)_Primary.ldf') COLLATE SQL_Latin1_General_CP1_CI_AS
GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_CLOSE OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
USE [$(DatabaseName)];


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                NUMERIC_ROUNDABORT OFF,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL,
                CURSOR_CLOSE_ON_COMMIT OFF,
                AUTO_CREATE_STATISTICS ON,
                AUTO_SHRINK OFF,
                AUTO_UPDATE_STATISTICS ON,
                RECURSIVE_TRIGGERS OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ALLOW_SNAPSHOT_ISOLATION OFF;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET READ_COMMITTED_SNAPSHOT OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_UPDATE_STATISTICS_ASYNC OFF,
                PAGE_VERIFY NONE,
                DATE_CORRELATION_OPTIMIZATION OFF,
                DISABLE_BROKER,
                PARAMETERIZATION SIMPLE,
                SUPPLEMENTAL_LOGGING OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF IS_SRVROLEMEMBER(N'sysadmin') = 1
    BEGIN
        IF EXISTS (SELECT 1
                   FROM   [master].[dbo].[sysdatabases]
                   WHERE  [name] = N'$(DatabaseName)')
            BEGIN
                EXECUTE sp_executesql N'ALTER DATABASE [$(DatabaseName)]
    SET TRUSTWORTHY OFF,
        DB_CHAINING OFF 
    WITH ROLLBACK IMMEDIATE';
            END
    END
ELSE
    BEGIN
        PRINT N'No se puede modificar la configuración de la base de datos. Debe ser un administrador del sistema para poder aplicar esta configuración.';
    END


GO
IF IS_SRVROLEMEMBER(N'sysadmin') = 1
    BEGIN
        IF EXISTS (SELECT 1
                   FROM   [master].[dbo].[sysdatabases]
                   WHERE  [name] = N'$(DatabaseName)')
            BEGIN
                EXECUTE sp_executesql N'ALTER DATABASE [$(DatabaseName)]
    SET HONOR_BROKER_PRIORITY OFF 
    WITH ROLLBACK IMMEDIATE';
            END
    END
ELSE
    BEGIN
        PRINT N'No se puede modificar la configuración de la base de datos. Debe ser un administrador del sistema para poder aplicar esta configuración.';
    END


GO
ALTER DATABASE [$(DatabaseName)]
    SET TARGET_RECOVERY_TIME = 0 SECONDS 
    WITH ROLLBACK IMMEDIATE;


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET FILESTREAM(NON_TRANSACTED_ACCESS = OFF),
                CONTAINMENT = NONE 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_CREATE_STATISTICS ON(INCREMENTAL = OFF),
                MEMORY_OPTIMIZED_ELEVATE_TO_SNAPSHOT = OFF,
                DELAYED_DURABILITY = DISABLED 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE (QUERY_CAPTURE_MODE = ALL, DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_PLANS_PER_QUERY = 200, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 367), MAX_STORAGE_SIZE_MB = 100) 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET QUERY_STORE = OFF 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
        ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
        ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
    END


GO
IF fulltextserviceproperty(N'IsFulltextInstalled') = 1
    EXECUTE sp_fulltext_database 'enable';


GO
PRINT N'Creando Tabla [dbo].[Cliente]...';


GO
CREATE TABLE [dbo].[Cliente] (
    [cc_cliente]               INT            NOT NULL,
    [nombre_apellido]          NVARCHAR (MAX) NOT NULL,
    [telefono_cliente]         NVARCHAR (MAX) NOT NULL,
    [direccion_cliente]        NVARCHAR (MAX) NOT NULL,
    [fecha_nacimiento_cliente] DATE           NOT NULL,
    [puntos_acumulados]        INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([cc_cliente] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Facturacion]...';


GO
CREATE TABLE [dbo].[Facturacion] (
    [id_factura]  INT             NOT NULL,
    [monto_total] DECIMAL (18, 2) NOT NULL,
    [fecha]       DATE            NOT NULL,
    [monto_iva]   DECIMAL (18, 2) NOT NULL,
    [cc_cliente]  INT             NOT NULL,
    [cc_personal] INT             NOT NULL,
    [id_venta]    INT             NOT NULL,
    PRIMARY KEY CLUSTERED ([id_factura] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[LugarStock]...';


GO
CREATE TABLE [dbo].[LugarStock] (
    [id_lugar]         INT           NOT NULL,
    [barcode_producto] INT           NOT NULL,
    [cantidad_bodega]  INT           NOT NULL,
    [cantidad_gondola] INT           NOT NULL,
    [seccion_bodega]   VARCHAR (MAX) NOT NULL,
    [seccion_gondola]  VARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([id_lugar] ASC),
    UNIQUE NONCLUSTERED ([barcode_producto] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Personal]...';


GO
CREATE TABLE [dbo].[Personal] (
    [cc_personal]               INT            NOT NULL,
    [nombre_apellido_personal]  NVARCHAR (MAX) NOT NULL,
    [cargo]                     BIT            NOT NULL,
    [telefono_personal]         NVARCHAR (MAX) NOT NULL,
    [email_personal]            NVARCHAR (MAX) NOT NULL,
    [direccion_personal]        NVARCHAR (MAX) NOT NULL,
    [fecha_nacimiento_personal] DATE           NOT NULL,
    [password]                  NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([cc_personal] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Productos]...';


GO
CREATE TABLE [dbo].[Productos] (
    [id_productos]      INT             NOT NULL,
    [nombre_producto]   NVARCHAR (MAX)  NULL,
    [fecha_llegada]     DATE            NULL,
    [fecha_vencimiento] DATE            NULL,
    [barcode]           INT             NULL,
    [precio]            DECIMAL (18, 2) NULL,
    [nit]               INT             NULL,
    [id_tipo]           INT             NULL,
    PRIMARY KEY CLUSTERED ([id_productos] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Proveedor]...';


GO
CREATE TABLE [dbo].[Proveedor] (
    [nit]                 INT            NOT NULL,
    [nombre_proveedor]    NVARCHAR (MAX) NOT NULL,
    [telefono_proveedor]  NVARCHAR (MAX) NOT NULL,
    [email_proveedor]     NVARCHAR (MAX) NOT NULL,
    [direccion_proveedor] NVARCHAR (MAX) NOT NULL,
    [agente_ventas]       NVARCHAR (MAX) NOT NULL,
    PRIMARY KEY CLUSTERED ([nit] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Tipo_Producto]...';


GO
CREATE TABLE [dbo].[Tipo_Producto] (
    [id_tipo]     INT            NOT NULL,
    [categoria]   NVARCHAR (MAX) NOT NULL,
    [perecedero ] BIT            NOT NULL,
    [iva]         INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([id_tipo] ASC)
);


GO
PRINT N'Creando Tabla [dbo].[Venta]...';


GO
CREATE TABLE [dbo].[Venta] (
    [id_venta]         INT NOT NULL,
    [barcode_producto] INT NOT NULL,
    [cantidad]         INT NOT NULL,
    [id_factura]       INT NOT NULL,
    PRIMARY KEY CLUSTERED ([id_venta] ASC),
    UNIQUE NONCLUSTERED ([barcode_producto] ASC)
);


GO
PRINT N'Creando Clave externa [dbo].[FK_Facturacion_ToTable]...';


GO
ALTER TABLE [dbo].[Facturacion]
    ADD CONSTRAINT [FK_Facturacion_ToTable] FOREIGN KEY ([cc_cliente]) REFERENCES [dbo].[Cliente] ([cc_cliente]);


GO
PRINT N'Creando Clave externa [dbo].[FK_Facturacion_ToTable_1]...';


GO
ALTER TABLE [dbo].[Facturacion]
    ADD CONSTRAINT [FK_Facturacion_ToTable_1] FOREIGN KEY ([cc_personal]) REFERENCES [dbo].[Personal] ([cc_personal]);


GO
PRINT N'Creando Clave externa [dbo].[FK_Facturacion_ToTable_2]...';


GO
ALTER TABLE [dbo].[Facturacion]
    ADD CONSTRAINT [FK_Facturacion_ToTable_2] FOREIGN KEY ([id_venta]) REFERENCES [dbo].[Venta] ([id_venta]);


GO
PRINT N'Creando Clave externa [dbo].[FK_Producto_ToTable]...';


GO
ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [FK_Producto_ToTable] FOREIGN KEY ([nit]) REFERENCES [dbo].[Proveedor] ([nit]);


GO
PRINT N'Creando Clave externa [dbo].[FK_Productos_ToTable1]...';


GO
ALTER TABLE [dbo].[Productos]
    ADD CONSTRAINT [FK_Productos_ToTable1] FOREIGN KEY ([id_tipo]) REFERENCES [dbo].[Tipo_Producto] ([id_tipo]);


GO
PRINT N'Creando Clave externa [dbo].[FK_Venta_ToTable]...';


GO
ALTER TABLE [dbo].[Venta]
    ADD CONSTRAINT [FK_Venta_ToTable] FOREIGN KEY ([id_factura]) REFERENCES [dbo].[Facturacion] ([id_factura]);


GO
-- Paso de refactorización para actualizar el servidor de destino con los registros de transacciones implementadas

IF OBJECT_ID(N'dbo.__RefactorLog') IS NULL
BEGIN
    CREATE TABLE [dbo].[__RefactorLog] (OperationKey UNIQUEIDENTIFIER NOT NULL PRIMARY KEY)
    EXEC sp_addextendedproperty N'microsoft_database_tools_support', N'refactoring log', N'schema', N'dbo', N'table', N'__RefactorLog'
END
GO
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '60cb5912-f082-4ccd-ba27-05eb5e78a91a')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('60cb5912-f082-4ccd-ba27-05eb5e78a91a')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'da54039b-0048-4a80-8d65-44e484e211c4')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('da54039b-0048-4a80-8d65-44e484e211c4')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '74698933-ae52-49bd-8ebd-41aca9017e61')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('74698933-ae52-49bd-8ebd-41aca9017e61')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '1c5bdbd3-afbb-46d8-996e-d2bbcc64b34b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('1c5bdbd3-afbb-46d8-996e-d2bbcc64b34b')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'd296b056-9463-43db-9c26-1639495ef9d5')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('d296b056-9463-43db-9c26-1639495ef9d5')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '0658f65d-f4af-4864-9f94-b0f4d993b03a')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('0658f65d-f4af-4864-9f94-b0f4d993b03a')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '09dcd52e-f11f-4de4-8b3c-71f1ddb48b8b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('09dcd52e-f11f-4de4-8b3c-71f1ddb48b8b')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'a41b4216-5dff-4f96-a11a-a994b30a128c')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('a41b4216-5dff-4f96-a11a-a994b30a128c')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'fe76b847-b465-4437-8444-9016c46f2a37')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('fe76b847-b465-4437-8444-9016c46f2a37')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '3ee370ef-64c4-4c6f-ae71-328e2d4230b4')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('3ee370ef-64c4-4c6f-ae71-328e2d4230b4')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '18bb244a-637a-4656-854a-039eb4a2c4df')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('18bb244a-637a-4656-854a-039eb4a2c4df')
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = 'e90e3893-3c12-4278-85bd-b3201fd4ed8b')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('e90e3893-3c12-4278-85bd-b3201fd4ed8b')

GO

GO
DECLARE @VarDecimalSupported AS BIT;

SELECT @VarDecimalSupported = 0;

IF ((ServerProperty(N'EngineEdition') = 3)
    AND (((@@microsoftversion / power(2, 24) = 9)
          AND (@@microsoftversion & 0xffff >= 3024))
         OR ((@@microsoftversion / power(2, 24) = 10)
             AND (@@microsoftversion & 0xffff >= 1600))))
    SELECT @VarDecimalSupported = 1;

IF (@VarDecimalSupported > 0)
    BEGIN
        EXECUTE sp_db_vardecimal_storage_format N'$(DatabaseName)', 'ON';
    END


GO
PRINT N'Actualización completada.';


GO
