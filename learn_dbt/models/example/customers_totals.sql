

select 
    c.C_CUSTKEY,
    c.c_NAME,
    c.C_PHONE,
    o.O_ORDERSTATUS,
    sum(o.O_TOTALPRICE) as total_price
from SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.CUSTOMER c
left join SNOWFLAKE_SAMPLE_DATA.TPCH_SF1.orders o
on c.C_CUSTKEY=o.o_custkey
group by 
    c.C_CUSTKEY,
    c.c_NAME,
    c.C_PHONE,
    o.O_ORDERSTATUS
order by c.C_CUSTKEY asc