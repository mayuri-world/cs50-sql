USE `mfa`;

ALTER TABLE `collections`
ADD COLUMN `deleted` TINYINT DEFAULT 0;

delimiter //

CREATE PROCEDURE `current_collection`()
BEGIN
    SELECT `title`, `accession_number`, `acquired`
    FROM `collections`
    WHERE `deleted` = 0;
END//


delimiter ;

CALL current_collection();



UPDATE `collections`
SET `deleted` = 1
WHERE `title` = 'Farmers working at dawn';

