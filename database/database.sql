CREATE DATABASE carsalon;

CREATE TABLE admin{
    admin_id SERIAL PRIMARY KEY,
    admin_password VARCHAR(32) NOT NULL,
    admin_username VARCHAR(32) NOT NULL
}

CREATE TABLE models{
    model_id SERIAL PRIMARY KEY,
    model_name VARCHAR(32) NOT NULL,
    model_img VARCHAR(32) NOT NULL
}

CREATE TABLE cars{
    car_id SERIAL PRIMARY KEY,
    car_name VARCHAR(62) NOT NULL,
    car_price VARCHAR(62) NOT NULL,
    car_img VARCHAR(32) NOT NULL,
    car_model VARCHAR(64) NOT NULL,
    car_tooning VARCHAR(32) NOT NULL,
    car_motor VARCHAR(32) NOT NULL,
    car_year VARCHAR(32) NOT NULL,
    car_color VARCHAR(32) NOT NULL,
    car_distance VARCHAR(32) NOT NULL,
    car_gearbook VARCHAR(64) NOT NULL,
    car_description VARCHAR(64) NOT NULL
}