CREATE TABLE [dbo].[LugarStock]
(
	[id_lugar] INT NOT NULL PRIMARY KEY, 
    [barcode_producto] INT NOT NULL UNIQUE, 
    [cantidad_bodega] INT NOT NULL, 
    [cantidad_gondola] INT NOT NULL, 
    [seccion_bodega] VARCHAR(MAX) NOT NULL, 
    [seccion_gondola] VARCHAR(MAX) NOT NULL
)
