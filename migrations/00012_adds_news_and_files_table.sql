-- +goose Up
create table if not exists dbo.news_and_files
(
    id      uuid not null primary key,
    news_id uuid not null references dbo.news (id),
    file_id uuid not null references dbo.files (id)
);

alter table dbo.news_and_files
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.news_and_files;