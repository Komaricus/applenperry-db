-- +goose Up
alter table dbo.products_and_categories add column priority int not null default 0;

alter table dbo.products_and_files add column priority int not null default 0;

create unique index if not exists products_url_uindex
    on dbo.products (url);