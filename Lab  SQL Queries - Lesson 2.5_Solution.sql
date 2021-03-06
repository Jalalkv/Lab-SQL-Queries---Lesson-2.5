
# Lab | SQL Queries - Lesson 2.5 - Solution


USE sakila;

 # 1) Select all the actors with the first name ‘Scarlett’
 #SELECT first_name
 #FROM actor
# WHERE first_name = 'Scarlett'; 
 
 
 # 2) How many films (movies) are available for rent and how many films have been rented?
 
#availabe for rent : 15861
#SELECT count(rental_id-return_date) 
#FROM rental;  
 
 #rented: 183 
 #SELECT count(*)
 #FROM rental
 #WHERE return_date IS NULL;
 
 
 # 3) What are the shortest and longest movie duration? Name the values max_duration and min_duration
  
  #shortest: 46 minutes 
  #SELECT MIN(length) as min_duration 
  #FROM film;  
 
 # longest: 185 minutes 
 SELECT MAX(length) as max_duration
 FROM film; 
 
 
 # 4) What's the average movie duration expressed in format (hours, minutes)?

 SELECT
floor(AVG(length)/60) as hours,
floor(AVG(length)%60) as min
FROM film; 


# 5) How many distinct (different) actors' last names are there?

SELECT distinct(count(last_name)) 
FROM actor;  
 
# 6) Since how many days has the company been operating (check DATEDIFF() function)?

# 7) Show rental info with additional columns month and weekday. Get 20 results.

 # 8) Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
 
 # 9) How many rentals were in the last month of activity?



