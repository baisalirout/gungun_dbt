{% macro mkt_segmment(c1) %}
    case    when c_mktsegment = 'AUTOMOBILE' then 'machine_catagory_1'
            when c_mktsegment = 'MACHINERY' then 'machine_catagory_2'
            when c_mktsegment = 'Household' then 'household_catagory_1'
            when c_mktsegment = 'BUILDING' then 'household_catagory_2'
            when c_mktsegment = 'FURNITURE' then 'household_catagory_3'
    else 'NA'
    end

    
{% endmacro %}