CREATE TABLE [dbo].[Productos]
(
	[id_productos] INT NOT NULL PRIMARY KEY, 
    [nombre_producto] NVARCHAR(MAX) NULL, 
    [fecha_llegada] DATE NULL, 
    [fecha_vencimiento] DATE NULL, 
    [barcode] INT NULL, 
    [precio] DECIMAL(18, 2) NULL, 
    [nit] INT NULL, 
    [id_tipo] INT NULL, 
    CONSTRAINT [FK_Producto_ToTable] FOREIGN KEY ([nit]) REFERENCES [Proveedor]([nit]), 
    CONSTRAINT [FK_Productos_ToTable1] FOREIGN KEY ([id_tipo]) REFERENCES [Tipo_Producto]([id_tipo])
)
