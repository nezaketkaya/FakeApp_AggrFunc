-- <?xml version="1.0" encoding="UTF-8"?><sqlb_project><db path="C:/Users/ali/Desktop/FakeApp/FakeApp.db" readonly="0" foreign_keys="1" case_sensitive_like="0" temp_store="0" wal_autocheckpoint="1000" synchronous="2"/><attached/><window><main_tabs open="structure browser pragmas query" current="3"/></window><tab_structure><column_width id="0" width="300"/><column_width id="1" width="0"/><column_width id="2" width="125"/><column_width id="3" width="887"/><column_width id="4" width="0"/><expanded_item id="0" parent="1"/><expanded_item id="1" parent="1"/><expanded_item id="2" parent="1"/><expanded_item id="3" parent="1"/></tab_structure><tab_browse><current_table name="4,9:mainfake_apps"/><default_encoding codec=""/><browse_table_settings><table schema="main" name="Yeni XLSX Worksheet" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="300"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="Yeni XLSX Worksheet (3)" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort><column index="1" mode="0"/></sort><column_widths><column index="1" value="59"/><column index="2" value="141"/><column index="3" value="139"/><column index="4" value="59"/><column index="5" value="59"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table><table schema="main" name="fake_app" show_row_id="0" encoding="" plot_x_axis="" unlock_view_pk="_rowid_"><sort/><column_widths><column index="1" value="52"/><column index="2" value="57"/><column index="3" value="85"/><column index="4" value="104"/><column index="5" value="52"/></column_widths><filter_values/><conditional_formats/><row_id_formats/><display_formats/><hidden_columns/><plot_y_axes/><global_filter/></table></browse_table_settings></tab_browse><tab_sql><sql name="SQL 1">

-- How many apps are in the table?

SELECT COUNT(*) 

FROM fake_apps;



-- How many free apps are in the table?

SELECT COUNT(*) 

FROM fake_apps

WHERE price = 0;



-- Add all values in the downloads column.

SELECT SUM(downloads)

FROM fake_apps;



-- What is the least number of times an app has been downloaded?

SELECT MIN(downloads)

FROM fake_apps;



-- Write a new query that returns the price of the most expensive app.

SELECT MAX(price)

FROM fake_apps;



-- Calculate the average number of downloads for all the apps in the table.

SELECT AVG(downloads)

FROM fake_apps;



-- Calculate the average price for all the apps in the table.

SELECT AVG(price)

FROM fake_apps;



-- How can we get the average of only the unique values of a column?

SELECT AVG(DISTINCT price)

FROM fake_apps;



-- Return the name column and a rounded price column.

SELECT name, ROUND(price, 0)

FROM fake_apps;





-- Round the price average to 2 decimal places.

SELECT ROUND(AVG(price), 2)

FROM fake_apps;



-- Arrange price into groups.

SELECT price, COUNT(*) 

FROM fake_apps

GROUP BY price;



-- In the previous query, add a WHERE clause to count the total number of apps 

-- that have been downloaded more than 20.000 times, at each price.

SELECT price, COUNT(*) 

FROM fake_apps

WHERE downloads > 20000

GROUP BY price;



-- Calculate the total number of downloads for each category.

SELECT category, SUM(downloads)

FROM fake_apps

GROUP BY category;



---------------------------

SELECT category,  -- 1

   price,         -- 2

   AVG(downloads)

FROM fake_apps

GROUP BY category, price;



-- Use column reference numbers instead of column names after GROUP BY.

SELECT category, 

   price,

   AVG(downloads)

FROM fake_apps

GROUP BY 1,2;



-- Price points that have more than 10 apps.

SELECT price, 

   ROUND(AVG(downloads)),

   COUNT(name)

FROM fake_apps

GROUP BY price

HAVING COUNT(name) > 10;

-- </sql><current_tab id="0"/></tab_sql></sqlb_project>
