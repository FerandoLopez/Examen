CREATE DEFINER=`root`@`localhost` PROCEDURE `P_AgregarVendedor`(
in p_CodigoVendedor VARCHAR(50),
in p_NombreVendedor VARCHAR(50)
)
BEGIN
declare existe int default 0;
SELECT COUNT(*) FROM vendedor WHERE codigoVendedor = p_CodigoVendedor INTO existe;
if    exite > 0 THEN
    SELECT "YA EXISTE";
ELSE
    insert INTO vendedor VALUES(p_CodigoVendedor,p_NombreVendedor);
    SELECT "AGREGADO";
END IF;
END

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_ModificarVendedor`(
IN p_CodigoVendedor VARCHAR(50),
IN p_NombreVendedor VARCHAR(50)
)
BEGIN
    DECLARE existe INT DEFAULT 0;
    SELECT COUNT(*) FROM vendedor WHERE codigoVendedor = p_CodigoVendedor INTO existe;
    IF existe > 1 THEN
        UPDATE vendedor SET codigovendedor = p_CodigoVendedor, nombrevendedor = p_NombreVendedor WHERE (codigovendedor = p_CodigoVendedor);
    else
        SELECT "NO EXISTE DICHO DATO";
    END IF;

END

CREATE DEFINER=`root`@`localhost` PROCEDURE `p_EliminarVendedor`(
IN p_CodigoVendedor VARCHAR(50),
IN p_NombreVendedor VARCHAR(50)
)
BEGIN
	DECLARE existe INT DEFAULT 0;
	SELECT COUNT(*) FROM vendedor WHERE codigoVendedor = p_CodigoVendedor INTO existe;
	IF existe > 1 THEN
		DELETE FROM vendedor WHERE (codigovendedor = p_CodigoVendedor);
	else
		SELECT "NO EXISTE DICHO DATO";
    END IF;

END