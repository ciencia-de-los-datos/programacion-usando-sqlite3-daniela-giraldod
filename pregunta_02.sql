-- 
--  La tabla `data` tiene la siguiente estructura:
-- 
--    K0  CHAR(1)
--    K1  INT
--    c12 FLOAT
--    c13 INT
--    c14 DATE
--    c15 FLOAT
--    c16 CHAR(4)
-- 
--  Escriba una consulta que retorne la cantidad de registros
--  de la tabla `tbl1`.
-- 
--  Rta/
--     COUNT(*)
--  0        30
--
--  >>> Escriba su codigo a partir de este punto <<<
    SELECT
      count(*)
    FROM
      tbl1
