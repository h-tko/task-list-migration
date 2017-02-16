
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE task_comments (
    id serial not null primary key,
    task_id integer not null,
    member_id integer not null,
    comment text not null,
    created_at timestamp(0) not null default now(),
    updated_at timestamp(0) not null default now(),
    deleted_at timestamp(0)
);

CREATE INDEX task_comments_task_id_idx ON task_comments USING btree(task_id);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE task_comments;
