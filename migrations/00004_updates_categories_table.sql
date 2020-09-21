-- +goose Up
alter table dbo.categories
    alter column id set default uuid_generate_v4();

alter table dbo.categories
    add created_at timestamp default now() not null;

alter table dbo.categories
    add is_deleted bool default false not null;