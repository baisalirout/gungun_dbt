select c_custkey, c_name, {{mkt_segmment(c_mktsegment)}}
                             as c_mktsegment from {{ source('s1', 't_customer') }}
