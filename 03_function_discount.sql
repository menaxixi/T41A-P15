CREATE OR REPLACE FUNCTION desc_producto(precio_org NUMERIC,porcentaje NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
  RETURN ROUND(precio_org-(precio_org*(porcentaje/100.00)),2);
END;
$$ LANGUAGE plpgsql;
