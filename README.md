# Crowdfunding_ETL
Project 2 - ETL 

Team members: Anush, Susan, Mark

Project goal: Extract, Transform, and Load data from 2 xlsx files: crowdfunding.xlsx and contacts.xlsx.

Steps:

Data was imported from the xlsx files and turned into dataframes that where then briefly analyzed to create category ID columns. 2 seperate dataframes were created for category/subcategory ID's and their unique category names and were merged with the main campain_df to add category/subcategory names to the dataset.

Then the contacts DF was created by importing the xlsx, turning into a dataframe, and cleaned two ways. First it was cleaned by importing json library and a for loop to seperate the clumped data. For practice, it was cleaning again using regular expressions to pull out key items in and put it in seperate column.

Finally, a SQL database was created with all this data with primary keys as well as an Entity Relationship Diagram (ERD)