
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE tasks (
    id serial primary key not null,
    title text not null,
    body text not null,
    status integer not null default 0,
    regist_member_id integer not null,
    in_charge_member_id integer,
    fixed_at timestamp(0),
    created_at timestamp(0) not null default now(),
    updated_at timestamp(0) not null default now(),
    deleted_at timestamp(0)
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE tasks;
