/*Создание БД с таблицами и записями для разработки*/

/*Создаем базу данных*/
CREATE DATABASE blogarticles;

/*Указываем с какой БД мы будем работать*/
USE  blogarticles;

/*Создаем  таблицы*/
CREATE TABLE listarticles (ID INT(11) NOT NULL AUTO_INCREMENT,Name varchar(45) NOT NULL,
 Date datetime NOT NULL,
 IDAutor INT(11) NOT NULL,
 IDArticle INT(11) NOT NULL,
 PRIMARY KEY(ID));

CREATE TABLE articles (ID INT(11) NOT NULL AUTO_INCREMENT,Text varchar(255) NOT NULL,
 Title varchar(255) NOT NULL,
 PRIMARY KEY(ID));

/*Заполняем таблицы записями */
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Иван Петрикеев', '2017-05-05 23:56:25', 1, 1);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Петров Иванов', '2017-10-05 23:56:25', 2, 2);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 1', '2017-11-05 23:56:25', 3, 3);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 2', '2017-11-05 23:56:25', 4, 4);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 3', '2017-11-05 23:56:25', 5, 5);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 4', '2017-11-05 23:56:25', 6, 6);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 5', '2017-11-05 23:56:25', 7, 7);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 6', '2017-11-05 23:56:25', 8, 8);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 7', '2017-11-05 23:56:25', 9, 9);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 8', '2017-11-05 23:56:25', 10, 10);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 9', '2017-11-05 23:56:25', 11, 11);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 10', '2017-11-05 23:56:25', 12, 12);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 11', '2017-11-05 23:56:25', 13, 13);
INSERT INTO listarticles (`Name`, `Date`, `IDAutor`, `IDArticle`) VALUES ('Автор 12', '2017-11-05 23:56:25', 14, 14);

INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 1', 'Блог 1');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 2', 'Блог 2');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 3', 'Блог 3');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 4', 'Блог 4');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 5', 'Блог 5');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 6', 'Блог 6');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 7', 'Блог 7');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 8', 'Блог 8');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 9', 'Блог 9');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 10', 'Блог 10');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 11', 'Блог 11');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 12', 'Блог 12');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 13', 'Блог 13');
INSERT INTO articles (`Text`, `Title`) VALUES ('Текст блога 14', 'Блог 14');