CREATE TABLE IF NOT EXISTS users(

	id serial primary key,
	name varchar(50), 
	email varchar(80),
	password varchar(200),
	status VARCHAR(20),
	email_confirmation boolean
);

CREATE TABLE IF NOT EXISTS group(

    id serial primary key,
    group_name varchar(50)
);

CREATE TABLE IF NOT EXISTS group_permissions(

	id serial primary key,
	group_id int,
	service varchar(100),
	visualization boolean,
	insert boolean,
	update boolean,
	delete boolean
);

alter table group_permissions add constraint fk_group_permissions_group foreign key (group_id) references group(id);

CREATE TABLE IF NOT EXISTS users_group(

    id serial primary key,
    group_id int,
    user_id int
);

alter table users_group add constraint fk_users_group_users foreign key (user_id) references users(id);
alter table users_group add constraint fk_users_group_group foreign key (group_id) references group(id);