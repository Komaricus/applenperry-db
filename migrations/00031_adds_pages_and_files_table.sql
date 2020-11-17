-- +goose Up
create table if not exists dbo.pages_and_files
(
    id      uuid not null primary key,
    page_id uuid not null references dbo.pages (id),
    file_id uuid not null references dbo.files (id)
);

alter table dbo.pages_and_files
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.pages_and_files;