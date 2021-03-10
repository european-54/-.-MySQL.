1. Написать крипт, добавляющий в БД vk, которую создали на занятии, 3 новые таблицы (с перечнем полей, указанием индексов и внешних ключей)

-- Table `vk`.`video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vk`.`video` (
  `id_video` INT NOT NULL,
  `video_media_id` VARCHAR(50) NULL,
  `file_name` VARCHAR(255) NULL,
  `size` INT NULL,
  `meta_data` JSON NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `users_id` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_video`),
  INDEX `fk_video_users1_idx` (`users_id` ASC) VISIBLE,
  CONSTRAINT `fk_video_users1`
    FOREIGN KEY (`users_id`)
    REFERENCES `vk`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Table `vk`.`audio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vk`.`audio` (
  `id_audio` INT NOT NULL,
  `audio_media_id` VARCHAR(50) NULL,
  `file_name` VARCHAR(255) NULL,
  `size` INT NULL,
  `meta_data` JSON NULL,
  `created_at` DATETIME NULL,
  `updated_at` DATETIME NULL,
  `users_id` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id_audio`),
  INDEX `fk_audio_users1_idx` (`users_id` ASC) VISIBLE,
  CONSTRAINT `fk_audio_users1`
    FOREIGN KEY (`users_id`)
    REFERENCES `vk`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- Table `vk`.`my_vacation`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vk`.`my_vacation` (
  `id` INT NOT NULL,
  `body` TEXT(10000) NULL,
  `file_name` VARCHAR(255) NULL,
  `size` INT NULL,
  `metadata` JSON NULL,
  `created_at` DATETIME NULL,
  `updated` DATETIME NULL,
  `users_id` BIGINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_my_vacation_users1_idx` (`users_id` ASC) VISIBLE,
  CONSTRAINT `fk_my_vacation_users1`
    FOREIGN KEY (`users_id`)
    REFERENCES `vk`.`users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
