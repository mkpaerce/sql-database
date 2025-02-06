USE whr_hours;
CREATE TABLE `hours_worked_`(
    `hours_id` INT UNSIGNED NOT NULL,
    `country_id` INT NOT NULL,
    `year` INT NOT NULL,
    `average_hours` FLOAT(53) NOT NULL,
    PRIMARY KEY(`hours_id`)
);
CREATE TABLE `whr_combined`(
    `whr_id` INT UNSIGNED NOT NULL,
    `country_id` INT UNSIGNED NOT NULL,
    `region_id` INT UNSIGNED NOT NULL,
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
CREATE TABLE `countries`(
    `country_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `country_name` VARCHAR(255) NOT NULL
);
CREATE TABLE `regions`(
    `region_id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `region_name` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `whr_combined` ADD CONSTRAINT `whr_combined_country_id_foreign` FOREIGN KEY(`country_id`) REFERENCES `countries`(`country_id`);
ALTER TABLE
    `hours_worked` ADD CONSTRAINT `hours_worked_country_id_foreign` FOREIGN KEY(`country_id`) REFERENCES `countries`(`country_id`);
ALTER TABLE
    `whr_combined` ADD CONSTRAINT `whr_combined_region_id_foreign` FOREIGN KEY(`region_id`) REFERENCES `regions`(`region_id`);