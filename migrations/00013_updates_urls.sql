-- +goose Up
create unique index if not exists categories_url_uindex
    on dbo.categories (url);

alter table dbo.news
    add if not exists url varchar(300) not null default '';

create unique index if not exists news_url_uindex
    on dbo.news (url);

create unique index if not exists vendors_url_uindex
    on dbo.vendors (url);

create unique index if not exists news_sections_url_uindex
    on dbo.news_sections (url);
