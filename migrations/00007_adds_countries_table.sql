-- +goose Up
create table if not exists dbo.countries
(
    id         uuid primary key        not null,
    name       varchar(100)            not null,
    flag       uuid                    not null,
    created_at timestamp default now() not null,
    is_deleted bool      default false not null,
    CONSTRAINT fk_flag foreign key (flag) references dbo.files (id)
);

alter table dbo.countries
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.countries;