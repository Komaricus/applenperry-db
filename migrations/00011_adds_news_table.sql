-- +goose Up
create table if not exists dbo.news
(
    id          uuid primary key        not null,
    name        varchar(300)            not null,
    section_id  uuid                    not null,
    subheader   varchar(300)            not null,
    description varchar(1000)           not null,
    file_id     uuid                    not null,
    content     text                    not null,
    created_at  timestamp default now() not null,
    is_deleted  bool      default false not null,
    CONSTRAINT fk_section_id foreign key (section_id) references dbo.news_sections (id),
    CONSTRAINT fk_file_id foreign key (file_id) references dbo.files (id)
);

alter table dbo.news
    owner to appleadmin;

-- +goose Down
drop table if exists dbo.news;