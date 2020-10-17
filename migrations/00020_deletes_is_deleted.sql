-- +goose Up
alter table dbo.about_cider drop column if exists is_deleted;
alter table dbo.about_cider add column if not exists updated_at timestamp default now();

alter table dbo.news_sections drop column if exists is_deleted;
alter table dbo.news_sections add column if not exists updated_at timestamp default now();

alter table dbo.news drop column if exists is_deleted;
alter table dbo.news add column if not exists updated_at timestamp default now();

alter table dbo.files drop column if exists is_deleted;
alter table dbo.files add column if not exists updated_at timestamp default now();

alter table dbo.home_slider drop column if exists is_deleted;
alter table dbo.home_slider add column if not exists updated_at timestamp default now();

alter table dbo.countries drop column if exists is_deleted;
alter table dbo.countries add column if not exists updated_at timestamp default now();

alter table dbo.categories drop column if exists is_deleted;
alter table dbo.categories add column if not exists updated_at timestamp default now();

alter table dbo.products drop column if exists is_deleted;
alter table dbo.products add column if not exists updated_at timestamp default now();

alter table dbo.products_types drop column if exists is_deleted;
alter table dbo.products_types add column if not exists updated_at timestamp default now();

alter table dbo.products_sugar_types drop column if exists is_deleted;
alter table dbo.products_sugar_types add column if not exists updated_at timestamp default now();

alter table dbo.vendors drop column if exists is_deleted;
alter table dbo.vendors add column if not exists updated_at timestamp default now();
