#### RELEASE 5

1. SELECT * FROM states;
2. SELECT * FROM regions;
3. SELECT state_name, population FROM states;
4. SELECT state_name, population FROM states ORDER BY population DESC;
5. SELECT state_name FROM states WHERE region_id = 7; 

6. SELECT state_name, population_density 
   FROM states 
   WHERE population_density > 50 
   ORDER BY population_density ASC;

7. SELECT state_name 
   FROM states 
   WHERE population 
   BETWEEN 1000000 AND 1500000;

8. SELECT state_name, region_id 
   FROM states 
   ORDER BY region_id ASC;

9. SELECT region_name 
   FROM regions 
   WHERE region_name 
   LIKE "%Central%";

10. SELECT regions.region_name, states.state_name 
    FROM regions 
    JOIN states ON regions.id = states.region_id 
    ORDER BY states.region_id ASC;

#### RELEASE 6

![Cher's Schema](database-intro/chers_schema.png)

#### RELEASE 7 - REFLECTION

#####What are databases for?
Databases are for storing large amounts of data in tables. They are easier to work with than
data structures and helps keep data more organized. They also make it easy to find relationships
between certain data or different kinds of data. Web applications in production use databases to
store data related to the application.

#####What is a one-to-many relationship?
One to many relationship refers to when two tables are related via a connecting common column. For 
example, a customer has many orders, so the customer will have an id and the order will have customer_id
to relate it to the customer id that placed the order. This relationship is very common in relational
data.


#####What is a primary key? What is a foreign key? How can you determine which is which?
A primary key is a unique value that each table has. It is usually a auto incrementing value
that is unique in each table, meaning there can be no duplicate primary keys for any given table.
A foreign key on the other hand is when one table refers to the primary key of another table. An order
placed by a customer might have a customer_id column as a foreign key in the orders table, for example.
The way to differentiate one from another is that a primary key is unique, and usually an auto-incrementing
integer id in each table. A foreign key on the other hand is not unique and will have a name that will
end with _id. 

#####How can you select information out of a SQL database? What are some general guidelines for that?
Some general guidelines that I use is that I try to remember SELECT, FROM, and WHERE. SELECT
referes to when what columns you are chosing. FROM refers to which table you are selecting your
data from. Where referes to the way you are filtering your data that is being returned, it is
not mandatory like the other two. These are some personal guidelines I use.
