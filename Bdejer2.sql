create database Almacen

use Almacen

create table productos
(
codproducto char(6) PRIMARY key ,
nombreproducto varchar(25),
existencia int,
precio float)

create table pedidos(
codpedido int,
cantidad int,
fechapedido datetime,
codproducto char(6)
)

alter table pedidos
add constraint FK_codprod
foreign key (codproducto) references productos(codproducto)

insert into productos values
('prod01','jabon',100,4.5),
('prod02','lejia',200,2.5),
('prod03','paste',400,6.5),
('prod04','shampoo',211,9),
('prod05','jabon de traste',50,3.5),
('prod06','pasta de zapato',400,2.4),
('prod07','pelota',50,3.5),
('prod08','tomates',100,0.25)