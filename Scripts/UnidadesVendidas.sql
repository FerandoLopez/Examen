create table unidadesvendidas(
modelo varchar(100) primary key,
nombre varchar(100),
fkidventas int,
foreign key(fkidventas) references Vendedores(codigo));