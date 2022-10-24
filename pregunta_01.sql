-- 
--  La tabla `tbl1` tiene la siguiente estructura:
-- 
--    K0  CHAR(1)
--    K1  INT
--    c12 FLOAT
--    c13 INT
--    c14 DATE
--    c15 FLOAT
--    c16 CHAR(4)
--
--  Escriba una consulta en SQL que devuelva la suma del campo c12.
-- 
--  Rta/
--     SUM(c12)
--  0  15137.63
--
--  >>> Escriba su codigo a partir de este punto <<<
--

import pandas as pd

import sqlite3

#iniciar conexion
conn = sqlite3.connect(":memory:")  ## aca se indica el nombre de la db.
cur = conn.cursor()
#tabla1.to_sql(name="tabla1", con=conn, if_exists="replace")  ### hacer conexion de archivo com sql


cur.execute(
    """
SELECT 
    sum(c12)

FROM
    tabla1
"""
).fetchall()
