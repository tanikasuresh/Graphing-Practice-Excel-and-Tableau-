# Home-Affordability
### Assignment
 During the Fall 2023 semester, I took Management Information Systems where we learned how to use Excel, Tableau, and SQL.
 For our final project, the professor shared an article from attomdata.com titled "Top 10 U.S. Housing Markets Considered Affordable in Q3 2023". The article contains two lists/graphs of the Top 10 and Bottom 10 counties based on the percent of annual income required to buy a house in all U.S. counties. 

ATTOM Article Link: https://www.attomdata.com/news/market-trends/figuresfriday/top-10-u-s-housing-markets-considered-affordable-in-q3-2023/

![image](https://www.attomdata.com/wp-content/uploads/2023/10/Top-10-Q3-2023-Affordability-Report-Affordable.png.webp)
![image](https://www.attomdata.com/wp-content/uploads/2023/10/Top-10-Q3-2023-Affordability-Report-Unaffordable.png.webp)

 The first task was to recreate these ranked lists and graphs using Excel, Tableau, and SQL. These ATTOM graphs can only be recreated by manually filtering for the counties listed in the graph and appropriately sorting.

 Please note that when recreating the second graph, which we will call Bottom 10, it will not contain Maui County as shown in the ATTOM article graph because the dataset used does not contain records for Maui County, Hawaii.

 The second task was to ignore the specific counties that were shown in the ATTOM article and create new Top 10 and Bottom 10 graphs using all US counties which will account for any differences in the data used to derive the two calculations.

### DATA
 The dataset `DW_COUNTY` used to create the graphs and charts in Excel, Tableau, and SQL was joined from various Excel spreadsheets that were provided along with the assignment.
 The dataset contains the following columns:
- County - the name of the county
- State - the abbreviation of the state name
- County_State - a calculated field that concatenates the county and state names into 'county, state'
- Date - the date in which the data is from (the date is set as the last day of each month and year)
- Home Value - the typical home value according to Zillow in all US counties based on the month and year
- Average Rate - the average 30-year fixed-rate mortgages in the US for all months and years
- Average Effective Tax Rate - effective tax rate by county 
- Annual Premium - average annual home insurance premium by zipcode
- Income Per Capita - average annual personal income for each county
- Required Minimum Income to Buy - a calculation to determine the "time-varying, county-specific minimum annual income to purchase a home under a 30-year fixed-rate loan with a 20% down payment and a 28% down payment"
  ![](Miscellaneous/Minimum_Income_To_Purchase_Calculation.png = 20x20)
- Percentage of Annual Income Required To Buy - a second calculation to determine the "time-varying county-specific pecentage of annual income required to purchase a home under a 30-year fixed-rate loan with a 20% down payment"

### Final Comments
First, we have successfully recreated the graphs/charts from the ATTOM article using Excel, Tableau, and SQL. Furthermore, all four charts/graphs are identical across the three mediums. 

Regarding the 2023 Q3 Top 10 and Bottom 10 graphs, we see that several counties in North Dakota seem to be more affordable with lower percentage of your annual income needed to buy a house, whereas the 10 least affordable counties to buy a house in all require more than 80% of your annual income to make the purchase.
