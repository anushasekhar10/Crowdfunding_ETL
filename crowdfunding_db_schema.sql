drop table campaign;

CREATE TABLE campaign(
    cf_id   INTEGER NOT NULL,
    contact_id int NOT NULL,
	company_name varchar(50),
	description varchar(50) NOT NULL,
       goal int NOT NULL,
	pledged int NOT NULL,
	outcome varchar (10), 
	backers_count int,
	country varchar(2),
	currency varchar (10),
	launched_date  date,
	end_date date,
	category_id varchar(20) NOT NULL,
	subcategory_id varchar(20) NOT NULL,
    PRIMARY KEY (cf_id )
	
	);

select * from campaign;

#-----------------------------------
DROP TABLE category;
 
CREATE TABLE category (
    	category_id varchar(20) NOT NULL,
    	category varchar(50) NOT NULL,
    	PRIMARY KEY (category_id)
	);
select * from category


#-----------------------------------
DROP TABLE subcategory;
 
CREATE TABLE subcategory (
    	subcategory_id varchar(20) NOT NULL,
    	subcategory varchar(50) NOT NULL,
    	PRIMARY KEY (subcategory_id)
	);
	
select * from subcategory;

----------
DROP TABLE contacts;
 
CREATE TABLE contacts(
    	contact_id integer NOT NULL,
    	name       varchar(50) NOT NULL,
		email      varchar(50) NOT NULL,
    	PRIMARY KEY (contact_id)
	);
	
select * from contacts;


#--Query testing
select * 
from campaign cp
left join category c on c.category_id = cp.category_id
left join subcategory sc on sc.subcategory_id = cp.subcategory_id
left join contacts p on p.contact_id = cp.contact_id;