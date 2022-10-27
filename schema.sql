CREATE TABLE item (
    id              INT GENERATED ALWAYS AS IDENTITY,
    genre           text,
    author          text,
    source          text,
    label           text,
    publish_date    date,
    archived        bit,
    PRIMARY KEY(id)
);

CREATE TABLE book (
    id                              INT GENERATED ALWAYS AS IDENTITY,
    item_id                         int,
    publisher                       text,
    cover_state                     text,
    PRIMARY KEY(id),
    CONSTRAINT fk_item
        FOREIGN KEY(item_id)
            REFERENCES item(id)
);

CREATE TABLE label (
	id                              INT GENERATED ALWAYS AS IDENTITY,
    item_id                         int,
	title                           text,
	color                           text,
    PRIMARY KEY(id),
    CONSTRAINT fk_item
        FOREIGN KEY(item_id)
            REFERENCES item(id)
);