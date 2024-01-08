-- CREATE TABLE orders (
-- 	order_id SERIAL PRIMARY KEY,
-- 	status VARCHAR(10) NOT NULL,
-- 	notes VARCHAR(255) NOT NULL,
-- 	created_on TIMESTAMP NOT NULL,
-- 	last_modified TIMESTAMP
-- );

-- INSERT INTO "orders"
-- 	("order_id", "status", "notes", "created_on", "last_modified")
-- VALUES
-- 	(1, 'PENDING', '', now(), NULL),
-- 	(2, 'ACCEPTED', 'Some notes', now(), now());

create table test_table_1
(
    id           integer generated always as identity
        primary key,
    code         varchar(45) default NULL::character varying,
    name         varchar(45) default NULL::character varying,
    created_date timestamp   default CURRENT_TIMESTAMP,
    updated_date timestamp   default CURRENT_TIMESTAMP
);

create table test_table_2
(
    id           integer generated always as identity
        primary key,
    code         varchar(45) default NULL::character varying,
    price        double precision,
    created_date timestamp   default CURRENT_TIMESTAMP,
    updated_date timestamp   default CURRENT_TIMESTAMP
);

create trigger t1_updated_at_modtime
    before update
    on test_table_1
    for each row
execute procedure update_updated_at_column();

create trigger t1_updated_at_modtime
    before update
    on test_table_2
    for each row
execute procedure update_updated_at_column();

-- CREATE TABLE test2 (
-- 	id int8 NOT NULL,
-- 	"name" varchar(255) NOT NULL,
-- 	CONSTRAINT id_pk_tes2 PRIMARY KEY (id)
-- )