\COPY dinner(id,name,description,restaurant_id) FROM '/Users/acaciapappas/Desktop/TableForChew/menu/server/db/utils/generator/menu_data/dinner.csv' DELIMITER ',' CSV HEADER;

-- SELECT setval('dinner_id_seq', (SELECT MAX(id) FROM dinner)+1);
ALTER SEQUENCE "dinner_id_seq" RESTART WITH 200000002;

CREATE INDEX restaurant_id_index_dinner ON dinner(restaurant_id);