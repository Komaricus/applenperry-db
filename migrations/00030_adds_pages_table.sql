-- +goose Up
create table if not exists dbo.pages
(
    id         uuid                    not null primary key,
    name       varchar(200)            not null,
    url        varchar(200)            not null unique,
    html       text                    not null,
    created_at timestamp default now() not null,
    updated_at timestamp default now() not null
);

alter table dbo.pages
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.pages;