select
        count(*)
from
        customer,
        orders,
        lineitem,
        nation
where
        c_custkey = o_custkey
        and l_orderkey = o_orderkey
        and o_orderdate >= date '1997/4/3'
        and o_orderdate < date '1997/7/3'
        and l_returnflag = 'S'
        and c_nationkey = n_nationkey