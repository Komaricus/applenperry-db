-- +goose Up
create unique index if not exists countries_url_uindex
    on dbo.countries (url);

create unique index if not exists products_types_url_uindex
    on dbo.products_types (url);

create unique index if not exists products_sugar_types_url_uindex
    on dbo.products_sugar_types (url);
