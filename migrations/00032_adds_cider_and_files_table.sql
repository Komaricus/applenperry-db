-- +goose Up
create table if not exists dbo.cider_and_files
(
    id       uuid not null primary key,
    cider_id uuid not null references dbo.about_cider (id),
    file_id  uuid not null references dbo.files (id)
);

alter table dbo.cider_and_files
    owner to appleadmin;

alter table dbo.about_cider
    drop column if exists size;

INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('e9efb237-8a7b-4acf-8682-a271d309165f', 'Apple''n''Perry', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('b9416f3c-601a-4368-9e41-661139fd7781', 'Redstreak', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('6354ff72-e4a2-4f03-b795-e30b97992b0f', 'Michelin', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('0566ab8a-b608-4672-922b-238f5db630cf', 'Kingston Black', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('08ce8158-26f3-4c9f-a363-44152d656e61', 'Harry Masters', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('cb77f926-2be1-4b14-b8c3-85611a703f90', 'Dabinett', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('b6f9f33b-34c3-448d-92d0-d7e51defe094', 'Bramley’s', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('19eb1738-7da9-487c-add9-a00826a90dc0', 'Hendre Huffcap', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('9de8a276-f6fc-48bc-a798-aba9c0dd0e3a', 'Yarlington Mill', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('e72e0ca2-d9b2-4d79-9af6-7bd7233b2662', 'Devon', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('3c0fe8f0-61af-4721-a3a3-815793f2421b', 'Gloucestershire', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('317c6df5-db59-41c3-b022-42eb94965beb', 'Herefordshire', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('ef9a0b58-0a3e-4f2c-9f3c-a4f9d5c05e32', 'Kent', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('e88f7521-3a81-4905-9100-e81a28823665', 'Somerset', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('b2debbef-4d63-434f-a7f5-263bd0fefa2e', 'Worcestershire', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('ff086d67-29e4-4c33-bd5f-fda952f2e05f', 'Warwickshire', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('8d7cd2bb-9e1a-4b5a-8939-154d079a256c', 'Ross-on-Wye', '', default, default)
ON CONFLICT DO NOTHING;
INSERT INTO dbo.about_cider (id, name, description, created_at, updated_at)
VALUES ('1c7e1331-be06-48dd-b532-45d98d38f21e', 'Glastonbury', '', default, default)
ON CONFLICT DO NOTHING;

-- +goose Down
drop table if exists dbo.cider_and_files;

alter table dbo.about_cider
    add column if not exists size int;