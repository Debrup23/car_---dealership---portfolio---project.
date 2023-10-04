create schema cars;
use cars;
select*from  cars.car_dekho;

-- READ DATA --

select*from car_dekho;
-- Total cars: To get a count of total records--
select count(Name) from car_dekho;

-- Total cars: available in 2023--

select count(*)
from car_dekho
where year=2023;

-- Total cars: available in 2020,2021 and 2022--
select count(*) from car_dekho 
where year in (2020,2021,2022)
group by year;
-- Total of all cars by year: I dont see other details --
select year,count(*)
from car_dekho
group by year
order by year ASC;

-- How many diesel car will be there in 2020 --
select count(*)
from car_dekho
where year=2020 and fuel="Diesel";

-- How many petrol car will be there in 2020 --
select count(*) from car_dekho
where year=2020 and fuel="Petrol";

-- print all the fuel cars petrol diesel and cng come by all years --
select  year,count(*) from car_dekho where fuel="petrol" group by year
order by year ASC;
select  year,count(*) from car_dekho where fuel="Diesel" group by year
order by year ASC;
select  year,count(*) from car_dekho where fuel="CNG" group by year
order by year ASC;
-- More than 100 cars in year--
select year,count(*) from car_dekho group by year
having count(*)>100
order by year ASC;
-- Less than 100 cars in year--
select year,count(*) from car_dekho group by year
having count(*)<100
order by year ASC;

-- All car count details between 2015 and 2023--
select year, count(*) from car_dekho 
where year between 2015 and 2023
group by year;

select count(*) from car_dekho where year between 2015 and 2023;

-- All car details between 2015 and 2023--
select*from car_dekho where year between 2015 and 2023
order by year ASC;












