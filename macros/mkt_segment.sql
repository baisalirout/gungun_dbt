{% macro mkt_segmment(c1) %}
    case
        when {{ c1 }} = 'AUTOMOBILE' then 'machine_catagory_1'
        when {{ c1 }} = 'MACHINERY' then 'machine_catagory_2'
        when {{ c1 }} = 'Household' then 'household_catagory_1'
        when {{ c1 }} = 'BUILDING' then 'household_catagory_2'
        when {{ c1 }} = 'FURNITURE' then 'household_catagory_3'
        else 'NA'
    end
{% endmacro %}