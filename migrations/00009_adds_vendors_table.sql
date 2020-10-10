-- +goose Up
create table if not exists dbo.vendors
(
    id               uuid primary key        not null,
    name             varchar(200)            not null,
    url              varchar(200)            not null,
    file_id          uuid                    not null,
    description      varchar(1000)           not null,
    country_id       uuid                    not null,
    created_at       timestamp default now() not null,
    is_deleted       bool      default false not null,
    CONSTRAINT fk_file_id foreign key (file_id) references dbo.files (id),
    CONSTRAINT fk_country_id foreign key (country_id) references dbo.countries (id)
);

alter table dbo.vendors
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.vendors;