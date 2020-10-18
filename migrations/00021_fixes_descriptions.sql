-- +goose Up
alter table dbo.vendors
    alter column description type text using description::text;

alter table dbo.vendors
    alter column description set default '';
