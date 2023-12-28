-- 2023 Q3 TOP 10
with quarter3 as
(
select county || ', ' || State as county_state, date, Value, Average_Rate, average_effective_tax_rate, Annual_Premium, Income_Per_Capita from DW_COUNTY
where value != "" AND date between '2023-07-01' and '2023-09-30'
),
calcs as
(
select quarter3.*, (Average_Rate/100)/12 as rt from quarter3
)
select county_state, avg(value) as average_home_value, avg(((1/0.28) * 0.8 * VALUE *(rt*(power(1+rt,360))/(power(1+rt,360) -1) * 12)) + VALUE * average_effective_tax_rate + Annual_Premium) as Average_Required_Minimum_Income_To_Buy,
avg((0.8 *VALUE *(rt*(power(1+rt,360))/(power(1+rt,360) -1) * 12) + VALUE * average_effective_tax_rate + Annual_Premium)/Income_Per_Capita) as average_percentage_of_annual_income_required_to_buy from calcs
group by county_state
order by average_percentage_of_annual_income_required_to_buy
limit 10;

-- 2023 Q3 BOTTOM 10
with quarter3 as
(
select county || ', ' || State as county_state, date, Value, Average_Rate, average_effective_tax_rate, Annual_Premium, Income_Per_Capita from DW_COUNTY
where value != "" AND date between '2023-07-01' and '2023-09-30'
),
calcs as
(
select quarter3.*, (Average_Rate/100)/12 as rt from quarter3
)
select county_state, avg(value) as average_home_value, avg(((1/0.28) * 0.8 * VALUE *(rt*(power(1+rt,360))/(power(1+rt,360) -1) * 12)) + VALUE * average_effective_tax_rate + Annual_Premium) as Average_Required_Minimum_Income_To_Buy,
avg((0.8 *VALUE *(rt*(power(1+rt,360))/(power(1+rt,360) -1) * 12) + VALUE * average_effective_tax_rate + Annual_Premium)/Income_Per_Capita) as average_percentage_of_annual_income_required_to_buy from calcs
group by county_state
order by average_percentage_of_annual_income_required_to_buy desc
limit 10;

-- 2023 Q3 ATTOM TOP 10
with quarter3 as
(
select county || ', ' || State as county_state, date, Value, Average_Rate, average_effective_tax_rate, Annual_Premium, Income_Per_Capita from DW_COUNTY
where value != "" AND date between '2023-07-01' and '2023-09-30'
and county_state in ('Macon County, IL','Wayne County, MI','Montgomery County, AL','Oswego County, NY','Caddo Parish, LA',
'Terrebonne Parish, LA','Fayette County, PA','La Salle County, IL','Saint Lawrence County, NY','Saginaw County, MI')
),
calcs as
(
select quarter3.*, (Average_Rate/100)/12 as rt from quarter3
)
select county_state, avg(value) as average_home_value, avg(((1/0.28) * 0.8 * VALUE *(rt*(power(1+rt,360))/(power(1+rt,360) -1) * 12)) + VALUE * average_effective_tax_rate + Annual_Premium) as Average_Required_Minimum_Income_To_Buy,
avg((0.8 *VALUE *(rt*(power(1+rt,360))/(power(1+rt,360) -1) * 12) + VALUE * average_effective_tax_rate + Annual_Premium)/Income_Per_Capita) as average_percentage_of_annual_income_required_to_buy from calcs
group by county_state
order by average_percentage_of_annual_income_required_to_buy;

--2023 Q3 ATTOM BOTTOM 10 (NO MAUI)
with quarter3 as
(
select county || ', ' || State as county_state, date, Value, Average_Rate, average_effective_tax_rate, 
Annual_Premium, Income_Per_Capita from DW_COUNTY
where value != "" AND date between '2023-07-01' and '2023-09-30'
and county_state in ('Kings County, NY','Marin County, CA','San Luis Obispo County, CA','Napa County, CA',
'Queens County, NY','Rockland County, NY','Sonoma County, CA','Nevada County, CA','Los Angeles County, CA')
),
calcs as
(
select quarter3.*, (Average_Rate/100)/12 as rt from quarter3
)
select county_state, avg(value) as average_home_value, avg(((1/0.28) * 0.8 * VALUE *(rt*(power(1+rt,360))/(power(1+rt,360) -1) * 12)) + VALUE * average_effective_tax_rate + Annual_Premium) as Average_Required_Minimum_Income_To_Buy,
avg((0.8 *VALUE *(rt*(power(1+rt,360))/(power(1+rt,360) -1) * 12) + VALUE * average_effective_tax_rate + Annual_Premium)/Income_Per_Capita) as average_percentage_of_annual_income_required_to_buy from calcs
group by county_state
order by average_percentage_of_annual_income_required_to_buy DESC;