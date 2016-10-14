viking_store
============

The Viking Store e-commerce application for Viking Commerce Inc

## by Farruh

## Data Models

### Users

+ id primary key
+ first_name, required, string
+ last_name, required, string
+ email, valid format, required  string

### Products 
  + id primary key
  + title, required, string
  + description, required, text
  + price, decimal, required
  + SKU_number, integer, required
  + category_id, foreign key

### Category
  + id primary key
  + title, string

### Address
	+ street_name, string, required
	+ city_id foreign key
	+ stated_id foreign key
	+ zip_code_id foreign key

### Phone
	+ number, string, required
	+ user_id foreign key

	







