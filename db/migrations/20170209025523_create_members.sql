
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE members (
    id serial not null primary key,
    name text not null,
    mail_address text not null,
    password text not null,
    created_at timestamp(0) not null default now(),
    updated_at timestamp(0) not null default now(),
    deleted_at timestamp(0)
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE members;
