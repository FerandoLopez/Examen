select Sum(Enero)+Sum(Febrero)+Sum(Marzo) 
as 'TOTAL' ,fkVendedores as 'Vendedor' FROM mes GROUP BY  fkvendedores 
ORDER BY 'TOTAL_VENTA' ASC LIMIT 1;

