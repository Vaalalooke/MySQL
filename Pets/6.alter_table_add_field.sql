USE pets
ALTER TABLE cats ADD gender CHAR(1) AFTER name;
SHOW CREATE TABLE cats\G
DESCRIBE cats;