-- +goose Up
alter table dbo.countries
    add column if not exists url varchar(100) not null default '';

alter table dbo.products_types
    add column if not exists url varchar(200) not null default '';

alter table dbo.products_sugar_types
    add column if not exists url varchar(200) not null default '';