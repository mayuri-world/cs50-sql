/* We want to create a database in MySQL with this schema! On the terminal, let’s connect to a MySQL server.*/

mysql -u root -h 127.0.0.1 -P 3306 -p



CREATE TABLE `cards` (
    `id` INT AUTO_INCREMENT,
    PRIMARY KEY(`id`)
);

CREATE TABLE `users` (
    `id` INT AUTO_INCREMENT,
    PRIMARY KEY(`id`)
);

CREATE TABLE `user_cards` (
    `id` INT AUTO_INCREMENT,
    `user_id` INT,
    `card_id` INT,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`card_id`) REFERENCES `cards`(`id`)
);

