# 8.4 More Schemas

## Release 2: One to One Schema
![One-to-one Schema](/phase-0/week-8/imgs/one-to-one-schema.png "One-to-one Schema")
- This is an example of a one-to-one schema for people and driving licenses. As not everyone might have a driving license, it makes sense to break the data into two separate entities which have a one-to-one relationship between the two tables. This will reduce the number of null values in the main persons table that is more regularly accessed.
- Note that the primary key of person is id, which is the foreign key in the drivers_license table.

## Release 4: Grocery List
![Many-to-many Schema](/phase-0/week-8/imgs/grocery_list.png "Many-to-many schema")

## Reflections
What is a one-to-one database?
- Each row in one database table is linked to 1 and only 1 other row in another table. This applies to both tables


When would you use a one-to-one database? (Think generally, not in terms of the example you created).
- A one-to-one database relationship is used in situations where the schema designer would like to break up data into two separate tables where some of these attributes might have null values
- In such a case, these attributes will be better off to be split into another table, with the main table only storing attributes that are most frequently accessed.
- This will help to improve efficiency of querying.

What is a many-to-many database?
- For example, in a many-to-many relationship between table A and table B: each record in A can be associated to more than one record in B, and each record in B can be associated to more than one record in A.
- To model a many-to-many relationship, two distinct tables are connected by a join table, which connects two independent tables by keeping track of the two primary IDs of the independent tables as foreign keys in the join table.

When would you use a many-to-many database? (Think generally, not in terms of the example you created).
- You would use a many-to-many database in situations where one or more rows in a table are associated with one or more rows in another table.
- Through additional research, *I learned that in relational database design, a many-to-many relationship is not allowed* To tackle this problem, a many-to-many relationship needs to be broken into two one-to-many relationships using a join table. Each record in the join table would have the foreign key fields of the two tables it is joining together. 
- 

What is confusing about database schemas? What makes sense?
- The material covered so far is pretty understandable. I think the challenge will come when I start designing database schemas for complicated situations/relationships, and then translate that schema into a working relational database that is aligned with design best-practices.