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

tabla1 = pd.read_csv(
    "tbl1.csv",
    sep=",",
    thousands=None,
    header=None,
    decimal=".",
    encoding="latin-1",
    names=["K0", "K1", "c12", "c13","c14","c15","c16"]
)
#

tabla1.to_sql(name="tabla1", con=conn, if_exists="replace")  ### hacer conexion de archivo com sql

#tabla1[0:1]


cur.execute(
    """
SELECT 
    sum(c12)

FROM
    tabla1
"""
).fetchall()
