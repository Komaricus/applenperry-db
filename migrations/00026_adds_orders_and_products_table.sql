-- +goose Up
create table if not exists dbo.orders_and_products
(
    order_id      uuid not null references dbo.orders(id),
    product_id    uuid not null references dbo.products(id),
    product_count int  not null,
    primary key (order_id, product_id)
);

alter table dbo.orders_and_products
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.orders_and_products;