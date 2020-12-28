-- +goose Up
alter table if exists dbo.products
    add column if not exists new_product bool not null default false;