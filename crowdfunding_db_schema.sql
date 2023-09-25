#-----------------------------------
DROP TABLE category;
 
CREATE TABLE category (
    	category_id varchar(20) NOT NULL,
    	category varchar(80) NOT NULL,
    	PRIMARY KEY (category_id)
	);
select * from category

#-----------------------------------
DROP TABLE subcategory;
 
CREATE TABLE subcategory (
    	subcategory_id varchar(20) NOT NULL,
    	subcategory varchar(80) NOT NULL,
    	PRIMARY KEY (subcategory_id)
	);
	
select * from subcategory;

----------
DROP TABLE contacts;
 
CREATE TABLE contacts(
    	contact_id integer NOT NULL,
    	firtst_name       varchar(50) NOT NULL,
		last_name       varchar(50) NOT NULL,
		email      varchar(80) NOT NULL,
    	PRIMARY KEY (contact_id)
	);
	
select * from contacts;




------
drop table campaign;

CREATE TABLE campaign(
    cf_id   INTEGER NOT NULL,
   	contact_id int NOT NULL,
	company_name varchar(80),
	description varchar(80) NOT NULL,
    goal float NOT NULL,
	pledged float NOT NULL,
	outcome varchar (20), 
	backers_count int,
	country varchar(2),
	currency varchar (10),
	launched_date  timestamp ,
	end_date timestamp ,
	category_id varchar(20) NOT NULL,
	subcategory_id varchar(20) NOT NULL,
    	PRIMARY KEY (cf_id ),
		FOREIGN KEY (category_id) REFERENCES category(category_id),
		FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id),
		FOREIGN KEY (contact_id) REFERENCES contacts(contact_id)
	);
	
select * from  campaign



--Query testing
select cp.* , c.* , sc.* , p.*
from campaign cp
left join category c on c.category_id = cp.category_id
left join subcategory sc on sc.subcategory_id = cp.subcategory_id
left join contacts p on p.contact_id = cp.contact_id;

