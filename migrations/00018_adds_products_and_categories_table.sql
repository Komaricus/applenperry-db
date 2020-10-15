-- +goose Up
create table if not exists dbo.products_and_categories
(
    product_id  uuid not null references dbo.products (id),
    category_id uuid not null references dbo.categories (id),
    primary key (product_id, category_id)
);

alter table dbo.products_and_categories
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.products_and_categories;