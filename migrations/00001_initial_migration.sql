-- +goose Up
create schema appledb.dbo;
alter schema appledb.dbo owner to appleadmin;

-- +goose Down
drop schema appledb.dbo;