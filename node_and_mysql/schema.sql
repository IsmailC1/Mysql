CREATE TABLE users (
    email VARCHAR(255) PRIMARY KEY,
    created_at TIMESTAMP DEFAULT NOW()
);

insert into users(email) values
('Katie34@yahoo.com'), 
('Tunde@gmail.com');

insert into users(email, created_at) values
('dusty@gmail.com','2018-08-21T11:28:33.462Z');