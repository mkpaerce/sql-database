USE whr;
CREATE TABLE `hours_table`(
    `hours_id` INT UNSIGNED,
    `country_id` INT UNSIGNED,
    `year` INT NOT NULL,
    `average_hours` FLOAT(53) NOT NULL,
    PRIMARY KEY(`hours_id`)
);
CREATE TABLE `whr_table`(
    `whr_id` INT UNSIGNED,
    `country_id` INT UNSIGNED,
    `region_id` INT UNSIGNED,
    `year` INT NOT NULL,
    `happiness` FLOAT(53) NOT NULL,
    `gdp_per_capita` FLOAT(53) NOT NULL,
    `social_support` FLOAT(53) NOT NULL,
    `life_expectancy` FLOAT(53) NOT NULL,
    `freedom` FLOAT(53) NOT NULL,
    `generosity` FLOAT(53) NOT NULL,
    `govt_corruption` FLOAT(53) NOT NULL,
    PRIMARY KEY(`whr_id`)
);
CREATE TABLE `country_table`(
    `country_id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `country_name` VARCHAR(255) NOT NULL
);
CREATE TABLE `region_table`(
    `region_id` INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `region_name` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `whr_table` ADD CONSTRAINT `whr_table_country_id_foreign` FOREIGN KEY(`country_id`) REFERENCES `country_table`(`country_id`);
ALTER TABLE
    `hours_table` ADD CONSTRAINT `hours_table_country_id_foreign` FOREIGN KEY(`country_id`) REFERENCES `country_table`(`country_id`);
ALTER TABLE
    `whr_table` ADD CONSTRAINT `whr_table_region_id_foreign` FOREIGN KEY(`region_id`) REFERENCES `region_table`(`region_id`);