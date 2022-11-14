CREATE TABLE "users" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "email" varchar,
  "password" varchar,
  "age" int,
  "roles_id" uuid
);

CREATE TABLE "courses" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "description" text,
  "level" varchar,
  "teacher" varchar,
  "users_id" uuid
);

CREATE TABLE "course_videos" (
  "id" uuid PRIMARY KEY,
  "title" varchar,
  "url" varchar,
  "categories_id" uuid
);

CREATE TABLE "categories" (
  "id" uuid PRIMARY KEY,
  "name" varchar,
  "courses_id" uuid
);

CREATE TABLE "roles" (
  "id" uuid PRIMARY KEY,
  "name" varchar
);

ALTER TABLE "users" ADD FOREIGN KEY ("roles_id") REFERENCES "roles" ("id");

ALTER TABLE "courses" ADD FOREIGN KEY ("users_id") REFERENCES "users" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("courses_id") REFERENCES "courses" ("id");

ALTER TABLE "course_videos" ADD FOREIGN KEY ("categories_id") REFERENCES "categories" ("id");




--C create insert into 

insert into users (

 	id,
  	name,
  	email,
  	password,
  	age,
  	roles_id
) values (
	'25c8de45-2f4e-450f-9374-0946cacea572',
	'jesus',
	'polibos6366@gmail.com',
	1234,
	32,
	'72cdb1a0-6fd8-4c0a-9b4b-5574a581239e'
)

insert into users (

 	id,
  	name,
  	email,
  	password,
  	age,
  	roles_id
) values (
	'f7abf7b0-991d-4cca-aa32-6e1c28dd8745',
	'gerardo',
	'gerardo@gmail.com',
	12345,
	45,
	'a4a378b3-c9ea-444c-8e10-7a61f82eecab'
)



insert into courses (
	id,
  title,
  description,
  level,
  teacher,
  users_id
	
) values (
	'28a4654f-7981-4103-af9d-aedc049e3845',
	'Learn javascript',
	'you can learn javascript in 3 months',
	'principiante',
	'sahid',
	'25c8de45-2f4e-450f-9374-0946cacea572'
	
)

insert into courses (
	id,
  title,
  description,
  level,
  teacher,
  users_id
	
) values (
	'9636add4-7f71-485f-a691-36964ff2b490',
	'teach javascript',
	'you can teach javascript in 3 months',
	'avanzado',
	'ricardo',
	'f7abf7b0-991d-4cca-aa32-6e1c28dd8745'
	
)


insert into course_videos (
	id,
  title,
  url,
  categories_id

) values (
	'ad6b9cd0-6c67-49a8-87f4-b94d562f853e',
	'clase 1 Variables',
	'https://variables',
	'9fb4fef3-a98a-4017-bc5f-40cb0c495847'
	
)

insert into course_videos (
	id,
  title,
  url,
  categories_id

) values (
	'35934f07-c87e-4e67-a41a-895534877373',
	'clase 1 aprende a enseñar',
	'https://teaching',
	'21f0459d-9df0-4ab0-b941-31ea0fc6b1ba'
	
)


insert into categories (

  id,
  name,
  courses_id

) values (
	'9fb4fef3-a98a-4017-bc5f-40cb0c495847',
	'programacion',
	'28a4654f-7981-4103-af9d-aedc049e3845'

)

insert into categories (

  id,
  name,
  courses_id

) values (
	'21f0459d-9df0-4ab0-b941-31ea0fc6b1ba',
	'teaching',
	'9636add4-7f71-485f-a691-36964ff2b490'

)


insert into roles (
 id,
  name

) values (
	'72cdb1a0-6fd8-4c0a-9b4b-5574a581239e',
	'student'

)

insert into roles (
 id,
  name

) values (
	'a4a378b3-c9ea-444c-8e10-7a61f82eecab',
	'teacher'

)




--R read select 

select * from users;

select name , email  from users;

select id as user_id ,name,age,email from users;


select * from users where id = '25c8de45-2f4e-450f-9374-0946cacea572' ;

select * from users where email = 'polibos6366@gmail.com' ;


--U update update  

update users 
set roles_id = '32537585-e182-4522-9200-b7d4ea7afb42'
where id =  '72cdb1a0-6fd8-4c0a-9b4b-5574a581239e';



