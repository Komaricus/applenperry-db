-- +goose Up
create table if not exists dbo.files
(
    id            uuid primary key        not null,
    file_name     varchar(30)             not null,
    path          varchar(50)             not null,
    original_name varchar(300)            not null,
    created_at    timestamp default now() not null,
    is_deleted    bool      default false not null
);

alter table dbo.files
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.files;