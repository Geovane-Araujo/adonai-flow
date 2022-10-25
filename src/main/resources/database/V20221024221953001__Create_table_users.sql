CREATE TABLE IF NOT EXISTS flow_users(

	id serial primary key,
	name varchar(50), 
	email varchar(80),
	senha varchar(50),
	status VARCHAR(20),
	email_confirmation boolean
);


CREATE TABLE IF NOT EXISTS flow_users_permissions(

	id serial primary key,
	user_id int,
	service varchar(100), 
	visualization boolean,
	insert boolean,
	update boolean,
	delete boolean
);

alter table flow_users_permissions add constraint fk_flow_users_permissions_flow_users foreign key (user_id) references flow_users(id);
