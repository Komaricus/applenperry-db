-- +goose Up
create table if not exists dbo.products_and_files
(
    product_id uuid not null references dbo.products (id),
    file_id    uuid not null references dbo.files (id),
    primary key (product_id, file_id)
);

alter table dbo.products_and_files
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.products_and_files;