CREATE TABLE tomatos_tomato (
    id serial PRIMARY KEY,
    name text NOT NULL,
    description text NOT NULL,
    image text
);
ALTER TABLE tomatos_tomato OWNER TO django;

/* ------------------------------------------------------------------------- */

CREATE TABLE tomatos_tomatocolor (
    id serial PRIMARY KEY,
    name text NOT NULL
);
ALTER TABLE tomatos_tomatocolor OWNER TO django;

CREATE TABLE tomatos_tomato_colors (
    id serial PRIMARY KEY,
    tomato_id integer NOT NULL REFERENCES tomatos_tomato ON DELETE CASCADE,
    tomatocolor_id integer NOT NULL REFERENCES tomatos_tomatocolor ON DELETE CASCADE
);
ALTER TABLE tomatos_tomato_colors OWNER TO django;

/* ------------------------------------------------------------------------- */

CREATE TABLE tomatos_tomatotype (
    id serial PRIMARY KEY,
    name text NOT NULL
);
ALTER TABLE tomatos_tomatotype OWNER TO django;

CREATE TABLE tomatos_tomato_types (
    id serial PRIMARY KEY,
    tomato_id integer NOT NULL REFERENCES tomatos_tomato ON DELETE CASCADE,
    tomatotype_id integer NOT NULL REFERENCES tomatos_tomatotype ON DELETE CASCADE
);
ALTER TABLE tomatos_tomato_types OWNER TO django;

