-- +goose Up
create table if not exists dbo.news_sections
(
    id         uuid primary key        not null,
    name       varchar(200)            not null,
    url        varchar(200)            not null,
    priority   smallint                not null,
    created_at timestamp default now() not null,
    is_deleted bool      default false not null
);

alter table dbo.news_sections
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.news_sections;