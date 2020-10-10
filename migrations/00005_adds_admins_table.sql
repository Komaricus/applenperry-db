-- +goose Up
create table if not exists dbo.admins
(
    id       uuid primary key not null,
    login    varchar(100)     not null,
    password varchar(64)      not null
);

alter table dbo.admins
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.admins;
