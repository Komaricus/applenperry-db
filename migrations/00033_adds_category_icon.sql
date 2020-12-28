-- +goose Up
alter table if exists dbo.categories
    add column if not exists icon uuid references dbo.files (id);

alter table if exists dbo.countries
    add column if not exists icon uuid references dbo.files (id);

alter table if exists dbo.products_sugar_types
    add column if not exists icon uuid references dbo.files (id);

alter table if exists dbo.products_types
    add column if not exists icon uuid references dbo.files (id);