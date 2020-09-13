-- +goose Up
create table if not exists dbo.about_cider (
    id uuid primary key not null,
    name varchar(300) not null,
    description text default '',
    size int,
    created_at timestamp default now(),
    is_deleted boolean default false
);

alter table dbo.about_cider owner to appleadmin;

-- +goose Down
drop table if exists dbo.about_cider;