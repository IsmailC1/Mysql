CREATE DATABASE ig_clone;
Use ig_clone;

create table users(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(255) UNIQUE  NOT NULL,
create_at TIMESTAMP default now()
);

create table photos(
id integer AUTO_INCREMENT PRIMARY KEY,
image_url VARCHAR(255) not null, 
user_id integer not null, 
create_at TIMESTAMp default NOW(),
FOREIGN KEY(user_id) REFERENCES users(id)
);

CREATE TABLE comments ( 
 id integer AUTO_INCREMENT PRIMARY KEY,
 comment_text VARCHAR(255) NOT NULL,
 user_id INTEGER NOT NULL,
 photo_id  INTEGER NOT NULL,
 created_at TIMESTAMP DEFAULT NOW(),
 FOREIGN KEY(user_id) REFERENCES users(id),
 FOREIGN KEY(photo_id) REFERENCEs photos(id)
 );
    
Create Table likes(
user_id integer not null, 
photo_id integer not null,
created_at TIMESTAMP default now(),     
FOREIGN KEY (user_id) REFERENCEs users(id),
FOREIGN KEY(photo_id) REFERENCES photos(id),
PRIMARY KEY(user_id, photo_id) 
);
    
Create table follows(
    follower_id integer not null,
    followee_id integer not null,
    created_at TIMESTAMP default now(),
    FOREIGN KEY (follower_id) REFERENCES users(id),
    FOREIGN KEY (followee_id) REFERENCES users(id),
    PRIMARY KEY (follower_id, followee_id)
    );
    
    create table tags(
    id integer AUTO_INCREMENT PRIMARY KEY, 
    tag_name VARCHAR(255) UNIQUE,
    created_at TIMESTAMP default now()
    );
 
 CREATE TABLE photo_tags(
   photo_id INTEGER NOT NULL,
   tag_id INTEGER NOT NULL, 
   FOREIGN key(photo_id) references photos(id),
   FOREIGN key(tag_id) references tags(id),
   primary key(photo_id, tag_id)
     );
    
    
insert into users(username) values
('BlueTheCat'),
('CharlieBrown'),
('ColtSteele');


insert into photos(image_url,user_id) values
('/acvas',1),
('/acvas',2),
('/45y4t5e',2);

insert into comments(comment_text, user_id, photo_id) values
('Meow!', 1,2),
('Amazing shot', 3,2),
('hello', 2,2);



insert into likes(user_id,photo_id) values 
(1,1),
(2,1),
(1,2),
(1,3),
(3,3);

insert into follows(follower_id, followee_id) values
(1,2),
(1,3),
(3,1),
(2,3);



INSERT  INTO tags(tag_name) values 
('adorable'),
('cute'),
('sunrise');
INSERT into photo_tags(photo_id, tag_id) values 
(1,1),
(1,2),
(2,3),
(3,2);









-- select photos.image_url, users.username from photos 
-- join users
-- on photos.user_id = users.id;


