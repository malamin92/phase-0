#### RELEASE 2
![RELEASE 2]()

#### RELEASE 4
![RELEASE 4]()

#### RELEASE 6 - REFLECTION
#####What is a one-to-one database?
In a one-to-one relationship, two things have a single relationship to one another and nothing else. It
is when two things create a pair. For example, a person can have one passport and a passport belongs
to one person, creating a one to one relationship.

#####When would you use a one-to-one database? (Think generally, not in terms of the example you created).
In general, you would use a one-to-one relationship when two tables share connecting information but
one of the tables can have columns that can be left empty or NULL. That way, when you query your database
for essential information, you will not have to worry about the optional data, making the query much
more efficient. 

#####What is a many-to-many database?
A many-to-many relationship consists of two tables that can have many of one another. Essentially,
a join table is created tracking the id's of the two tables that have a many-to-many relationship.
For example, a doctor can have many patients and a patient can have many different doctor's so a
doctors_patients table can be created as a join table, keeping track of the patient and doctor id.

#####When would you use a many-to-many database? (Think generally, not in terms of the example you created).
In general, you would use a many-to-many database when one or more rows in a table are associated with 
one or more rows in another table. This allows for the two tables to have many of one another.

#####What is confusing about database schemas? What makes sense?
I find the one-to-one relationship to be pretty straight forward. One thing belongs to another, and 
that thing belongs only to that one thing. I'm still a little confused about when and how to utilize
a many-to-many relationship. I want to learn more about the implementation of databases in our programs.