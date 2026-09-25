
/* we had a table called transactions to log artwork being bought or sold, which we can create here as well.*/

CREATE TABLE `transactions` (
    `id` INT AUTO_INCREMENT,
    `title` VARCHAR(64) NOT NULL,
    `action` ENUM('bought', 'sold') NOT NULL,
    PRIMARY KEY(`id`)
);



delimiter //
CREATE PROCEDURE `sell`(IN `sold_id` INT)
BEGIN
    UPDATE `collections` SET `deleted` = 1
    WHERE `id` = `sold_id`;
    INSERT INTO `transactions` (`title`, `action`)
    VALUES ((SELECT `title` FROM `collections` WHERE `id` = `sold_id`), 'sold');
END//
delimiter ;



CALL `sell`(2);

SELECT * FROM `transactions`;