-- +goose Up
create table if not exists dbo.home_slider
(
    id         uuid primary key        not null,
    file_id    uuid                    not null,
    created_at timestamp default now() not null,
    is_deleted bool      default false not null,
    CONSTRAINT fk_file_id foreign key (file_id) references dbo.files (id)
);

alter table dbo.home_slider
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.home_slider;