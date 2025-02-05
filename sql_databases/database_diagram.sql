CREATE TABLE `hours_worked`(
    `id` BIGINT NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `year` DATE NOT NULL,
    `average_hours` BIGINT NOT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE `whr_combined`(
    `id` BIGINT NOT NULL,
    `country` VARCHAR(255) NOT NULL,
    `region` VARCHAR(255) NOT NULL,
    `year` DATE NOT NULL,
    `happiness` FLOAT(53) NOT NULL,
    `gdp_per_capita` FLOAT(53) NOT NULL,
    `social_support` FLOAT(53) NOT NULL,
    `life_expectancy` FLOAT(53) NOT NULL,
    `freedom` FLOAT(53) NOT NULL,
    `generosity` FLOAT(53) NOT NULL,
    `govt_corruption` FLOAT(53) NOT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE `country_year`(
    `hours_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
    `whr_id` INT NOT NULL,
    `year` DATE NOT NULL,
    `country_id` VARCHAR(255) NOT NULL,
    PRIMARY KEY(`whr_id`)
);
ALTER TABLE
    `country_year` ADD CONSTRAINT `country_year_hours_id_foreign` FOREIGN KEY(`hours_id`) REFERENCES `hours_worked`(`id`);
ALTER TABLE
    `country_year` ADD CONSTRAINT `country_year_whr_id_foreign` FOREIGN KEY(`whr_id`) REFERENCES `whr_combined`(`id`);