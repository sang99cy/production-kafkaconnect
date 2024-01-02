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

CREATE TABLE test1 (
	id int8 NOT NULL,
	"name" varchar(255) NOT NULL,
	CONSTRAINT id_pk_tes1 PRIMARY KEY (id)
);

-- CREATE TABLE test2 (
-- 	id int8 NOT NULL,
-- 	"name" varchar(255) NOT NULL,
-- 	CONSTRAINT id_pk_tes2 PRIMARY KEY (id)
-- )