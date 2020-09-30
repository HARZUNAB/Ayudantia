use systimec_hector;

/*Pregunta 1
select * from Cliente c*/

/*Pregunta 2
select c.Nombre, c.Direccion, c.Telefono, c.Email, r.Descripcion_Retiro from Cliente c
	Join Ruta r on c.IdCliente = r.IdCliente
Where c.IdCliente=2*/

/*Respuesta 3
select r.IdRuta, r.IdCliente, r.Direccion, r.Ciudad, r.Descripcion_Retiro, cl.ddmmaa
from Ruta r 
	Join Calendario cl on r.IdCalendario = cl.IdCalendario
Where cl.ddmmaa between "2005-01-01" and "2007-12-31"*/


/*Respuesta 4
select c.Nombre, c.Direccion, c.Telefono, c.Email, count(c.Nombre) as Cant_Retiros
from Cliente c
	Join Ruta r on c.IdCliente = r.IdCliente
group by c.Nombre
order by Cant_Retiros desc
limit 1*/

/*Respuesta 5
select r.IdRuta, r.IdCliente, r.IdSucursal, r.Direccion, r.Descripcion_Retiro, r.Peso
from Ruta r
order by r.Peso desc
limit 1*/

/*Respuesta 6
select c.Nombre, c.Direccion, c.Telefono, c.Email, r.Descripcion_Retiro from Cliente c
	Join Ruta r on c.IdCliente = r.IdCliente*/

