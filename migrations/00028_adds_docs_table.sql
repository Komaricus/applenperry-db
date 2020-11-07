-- +goose Up
create table if not exists dbo.docs
(
    id   uuid         not null primary key,
    name varchar(200) not null,
    url  varchar(200) not null unique,
    html text         not null,
    created_at  timestamp    default now() not null,
    updated_at  timestamp    default now() not null
);

alter table dbo.docs
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.docs;