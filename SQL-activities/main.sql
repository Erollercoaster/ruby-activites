CREATE TABLE lessons3 (
	id integer PRIMARY KEY,
	name character varying(255) NOT NULL,
	description text,
	front_end boolean DEFAULT false,
	back_end boolean DEFAULT false,
	price numeric(8, 2) DEFAULT 0.0,
	created_at timestamp without time zone NOT NULL,
	updated_at timestamp without time zone NOT NULL
);

SELECT * FROM lessons3;