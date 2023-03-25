CREATE DATABASE IF NOT EXISTS `gallerydatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `gallerydatabase`;

DROP TABLE IF EXISTS `painting`;
DROP TABLE IF EXISTS `material`;
DROP TABLE IF EXISTS `genre`;

CREATE TABLE `genre`
(
    `id`    BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

INSERT INTO `genre` (`title`)
VALUES ('Portrait'),
       ('Landscape'),
       ('Still Life'),
       ('History Painting'),
       ('Genre Painting'),
       ('Abstract'),
       ('Realism'),
       ('Surrealism'),
       ('Impressionism'),
       ('Expressionism');

CREATE TABLE `material`
(
    `id`    BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title` varchar(45) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

INSERT INTO `material` (`title`)
VALUES ('Oil Paint'),
       ('Acrylic Paint'),
       ('Watercolor Paint'),
       ('Gouache Paint'),
       ('Tempera Paint'),
       ('Ink'),
       ('Charcoal'),
       ('Graphite'),
       ('Colored Pencil'),
       ('Pastel'),
       ('Clay'),
       ('Canvas'),
       ('Paper'),
       ('Wood'),
       ('Metal'),
       ('Stone');

CREATE TABLE `painting`
(
    `id`          BIGINT(20) NOT NULL AUTO_INCREMENT,
    `title`       varchar(45) DEFAULT NULL,
    `author`      varchar(45) DEFAULT NULL,
    `genre_id`    BIGINT(20)  DEFAULT NULL,
    `material_id` BIGINT(20)  DEFAULT NULL,
    `price`       DECIMAL(10, 2),
    `height`      int(11)     DEFAULT NULL,
    `width`       int(11)     DEFAULT NULL,
    `img`         MEDIUMBLOB  DEFAULT NULL,
    PRIMARY KEY (`id`),
    FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`) ON DELETE SET NULL,
    FOREIGN KEY (`material_id`) REFERENCES `material` (`id`) ON DELETE SET NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;

USE `gallerydatabase`;

INSERT INTO `painting` (`title`, `author`, `genre_id`, `material_id`, `price`, `height`, `width`, `img`)
VALUES ('Mona Lisa', 'Leonardo da Vinci', 1, 1, 1000000, 77, 53, NULL),
       ('The Starry Night', 'Vincent van Gogh', 2, 2, 900000, 74, 92, NULL),
       ('The Persistence of Memory', 'Salvador Dali', 7, 3, 750000, 24, 33, NULL),
       ('Guernica', 'Pablo Picasso', 4, 4, 800000, 349, 776, NULL),
       ('The Night Watch', 'Rembrandt', 4, 1, 1200000, 363, 437, NULL),
       ('Girl with a Pearl Earring', 'Johannes Vermeer', 1, 5, 700000, 44, 39, NULL),
       ('The Birth of Venus', 'Sandro Botticelli', 5, 6, 950000, 172, 278, NULL),
       ('The Scream', 'Edvard Munch', 7, 7, 650000, 91, 73, NULL),
       ('The Last Supper', 'Leonardo da Vinci', 4, 1, 1100000, 460, 880, NULL),
       ('American Gothic', 'Grant Wood', 5, 8, 600000, 74, 62, NULL),
       ('The Thinker', 'Auguste Rodin', 4, 4, 850000, 186, 87, NULL),
       ('The Great Wave off Kanagawa', 'Katsushika Hokusai', 2, 9, 800000, 25, 37, NULL),
       ('The Garden of Earthly Delights', 'Hieronymus Bosch', 7, 10, 900000, 220, 389, NULL),
       ('Les Demoiselles d''Avignon', 'Pablo Picasso', 5, 11, 950000, 243, 233, NULL),
       ('Nighthawks', 'Edward Hopper', 5, 12, 700000, 84, 152, NULL),
       ('The Kiss', 'Gustav Klimt', 1, 13, 750000, 180, 180, NULL),
       ('The Arnolfini Portrait', 'Jan van Eyck', 1, 14, 850000, 82, 60, NULL),
       ('The Hay Wagon', 'Winslow Homer', 2, 15, 600000, 61, 91, NULL),
       ('The Birth of Tragedy', 'Anselm Kiefer', 6, 16, 800000, 370, 560, NULL),
       ('The School of Athens', 'Raphael', 4, 1, 1000000, 500, 770, NULL);

