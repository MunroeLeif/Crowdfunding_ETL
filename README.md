# Crowdfunding_ETL
This is a project to demonstrate and practice building an ETL pipeline. It highlights the use of  Python and Pandas to extract and transform crowdfunding data, and once exported as CSV files, an ERD is used to upload the data into a postgres database. 

# About
First, the crowdfunding data was extracted from the source files. Using a crowdfunding.xlsx file, crowdfunding data was cleaned and transformed in to Category, Subcategory and Campaign DataFrames detailing the campaign and categorical data. A Contacts DataFrame was similarly created from the imported contacts.xlsx file, detailing the contact details of campaign runners. All four DataFrames were then exported as CSV files. 
Finally, the data was loaded into a Postgres Database. An ERD diagram was made based on the four CSV files. Using this ERD, a database schema was created and used to load the data into a Postgres database crowdfunding_db. 

# Contributors
Ron Briggs, Leif Munroe
