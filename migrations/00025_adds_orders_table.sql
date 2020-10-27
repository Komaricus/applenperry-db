-- +goose Up
CREATE SEQUENCE if not exists serial START 100000;

create table if not exists dbo.orders
(
    id         uuid primary key                    not null,
    code       int       default nextval('serial') not null,
    user_name  varchar(200)                        not null,
    user_phone varchar(30)                         not null,
    status     varchar(30)                         not null,
    created_at timestamp default now()             not null,
    updated_at timestamp default now()             not null
);

alter table dbo.orders
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.orders;