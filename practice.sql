COPY INTO olapCustomer (id, customer_id, first_name, last_name, address, zipcode, city)
SELECT customer.customer_id,
       customer.customer_id,
       customer.first_name,
       customer.last_name,
       address.address,
       city.city,
       address.postal_code
FROM customer
JOIN address ON (customer.address_id = address.address_id)
JOIN city    ON (address.city_id = city.city_id);
