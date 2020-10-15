-- +goose Up
create table if not exists dbo.products_types
(
    id         uuid                    not null primary key,
    name       varchar(200)            not null,
    created_at timestamp default now() not null,
    is_deleted bool      default false not null
);

alter table dbo.products_types
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.products_types;