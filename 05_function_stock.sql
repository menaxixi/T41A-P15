CREATE OR REPLACE FUNCTION stock_prod(minimo INT)
RETURNS TABLE(nom TEXT, stock INT) AS $$
BEGIN   
  RETURN QUERY SELECT name,cantidad FROM productos WHERE cantidad<minimo;
END;
$$ LANGUAGE plpgsql;
