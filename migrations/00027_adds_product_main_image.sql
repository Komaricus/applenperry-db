-- +goose Up
alter table dbo.products
    add column main_image uuid;

UPDATE dbo.products
SET main_image=subquery.file_id
FROM (SELECT product_id, file_id, priority
      FROM dbo.products_and_files
      WHERE priority = 0) AS subquery
WHERE dbo.products.id = subquery.product_id;
