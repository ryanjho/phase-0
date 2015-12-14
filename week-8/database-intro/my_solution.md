#8.4 Introduction to Database Schemas and SQL

## Release 5: Selecting data from a databse
1. Select all data for all states
```
SELECT * 
FROM states
```

2. Select all data for all regions
```
SELECT * 
FROM regions
```

3. Select the state_name and population for all states
```
SELECT state_name, population
FROM states
```

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.
```
SELECT state_name, population
FROM states
ORDER BY population DESC;
```

5. Select the state_name for the states in region 7
```
SELECT state_name
FROM states
WHERE region_id = 7;
```

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
```
SELECT state_name, population density
FROM states
WHERE population density > 50
ORDER BY population_density ASC;
```

7. Select the state_name for states with a population between 1 million and 1.5 million people.
```
SELECT state_name
FROM states
WHERE population BETWEEN 1000000 AND 1500000;
```

8. Select the state_name and region_id for states ordered by region in ascending order.
```
SELECT state_name, region_id
FROM states
ORDER BY region_id ASC;
```

9. Select the region_name
```
SELECT region_name
FROM regions
WHERE region_name LIKE '%Central%';
```

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).
```
SELECT region_name, state_name
FROM regions
INNER JOIN states
ON regions.id = states.region_id;
```

##Release 6: Outfits Schema
![Outfits Schema](/week-8/database-intro/Outfits_schema.png "Ryan's Outfit Schema")


# Release 7: Reflections
- What are databases for?
  - Databases are used to organize information to provide efficient retrieval of data. It allows for actions to be made on the dataset such as CREATE, READ, UPDATE, DELETE (CRUD).
  - Relational databases organize data in such a way that all data is represented in tuples and grouped into relations. 
  - Relational databases eliminates duplication and redundancy by having a unique key identifying each row.

- What is a one-to-many relationship?
  - It is when a parent record in one table can potentially reference several child records in another table.
  - In a one-to-many relationship, the parent record is not required to have child records, allowing for zero child records, single child records or multiple child records
  - What is essential is that the child record cannot have more than one parent record
  - An example is where a region has a one-to-many relationship with states. One region can have many states, but each state can only belong to one region.

- What is a primary key? What is a foreign key? How can you determine which is which?
  - A primary key is a unique identifier for each record. A relational databse must always have one and only one primary key
  - A foreign key is a field (or collection of fields) in one table that uniquely identifies a row of another table. An example is a foreign key in table 2 is the primary key for table 1.

- How can you select information out of a SQL database? What are some general guidelines for that?
  - By using a database query language (eg, Standard Query Language(SQL)) to access and manipulate databases
  - Some of the major commands include SELECT, UPDATE, DELETE, INSERT, WHERE
  - Some general guidelines include using a semicolon at the end of each table, and keeping in mind that SQL is not case sensitive: select is the same as SELECT