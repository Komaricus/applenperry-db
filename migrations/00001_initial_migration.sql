-- +goose Up
create schema if not exists dbo;
alter schema dbo owner to appleadmin;

-- +goose Down
drop schema if exists dbo;