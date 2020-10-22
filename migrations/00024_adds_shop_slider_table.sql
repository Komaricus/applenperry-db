-- +goose Up
create table if not exists dbo.shop_slider
(
    id          uuid primary key           not null,
    name        varchar(200)               not null,
    description text                       not null,
    link        varchar(200) default ''    not null,
    file_id     uuid                       not null,
    priority    smallint                   not null,
    created_at  timestamp    default now() not null,
    updated_at  timestamp    default now() not null,
    CONSTRAINT fk_file_id foreign key (file_id) references dbo.files (id)
);

alter table dbo.shop_slider
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.shop_slider;