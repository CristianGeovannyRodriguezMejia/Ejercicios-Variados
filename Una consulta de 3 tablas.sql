select Detalles.id_Pedido as numero_cliente, Detalles.id_Pedido as Numero_pedido, Cliente.nombre as Nombre, Cliente.dirrecion as Dirrecion,
Producto.Precio as precio, Producto.Detalle from Detalles join Producto on Detalles.id_Producto= Producto.id_Producto
join Cliente on Detalles.id_Cliente=Cliente.id_Cliente