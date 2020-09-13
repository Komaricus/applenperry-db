-- +goose Up
create table if not exists dbo.categories
(
    id          uuid primary key not null,
    name        varchar(200)     not null,
    url         varchar(200)     not null,
    description text default '',
    parent_id   uuid,
    CONSTRAINT fk_parent_id foreign key (parent_id) references dbo.categories (id)
);

alter table dbo.categories
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.categories;