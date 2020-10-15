-- +goose Up
create table if not exists dbo.products
(
    id          uuid primary key not null,
    name        varchar(300)     not null,
    url         varchar(300)     not null,
    type        uuid             not null references dbo.products_types (id),
    amount      int              not null default 0,
    size        float            not null,
    strength    float            not null,
    sugar_type  uuid             not null references dbo.products_sugar_types (id),
    price       float            not null default 0,
    vendor_code varchar(30)      not null,
    vendor_id   uuid             not null references dbo.vendors (id),
    subheader   varchar(300)     not null,
    description text             not null,
    created_at  timestamp                 default now() not null,
    is_deleted  bool                      default false not null
);

alter table dbo.products
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.products;