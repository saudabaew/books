USE test;

drop table if exists book;

create table book(
id int(11) not null auto_increment primary key,
title varchar(100),
description varchar(255),
author varchar(100),
isbn varchar(20),
printYear int,
readAlready boolean not null default false);

insert into book (id, title, description, author, isbn, printYear, readAlready) values (1, 'Война с саламандрами', 'научно-фантастический сатирический роман-антиутопия', 'Карел Чапек', '2-266-11156', 1972,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (2, 'Война и мир', 'роман-эпопея, описывающий русское общество в эпоху войн против Наполеона в 1805—1812 годах.', 'Лев Толстой', '2-266-11157', 1896,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (3, 'Анна Каренина', 'о трагической любви замужней дамы', 'Лев Толстой', '2-266-11158', 1877,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (4, 'Диктатор', 'Написанный до перестройки, роман во многом предсказал то, что произошло в СССР.', 'Сергей Снегов', '2-266-11159', 1996,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (5, 'Тренировка заключенных', 'Как избавиться от физических недостатков используя потерянные секреты развития силы для выживания.', 'Пол Уэйд', '2-266-11160', 2010,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (6, 'Красное и черное', 'Сюжет взят из газетной статьи, которую прочитал Стендаль в Гренобльской газете. Это типичный случай, характерен для того времени.', 'Стендаль', '2-266-11156', 1830,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (7, 'Нетерпение сердца', 'единственный завершённый роман австрийского писателя', 'Стефан Цвейг', '2-266-11161', 1939,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (8, 'Татарская пустыня', 'Сюжет романа основан на мысли ожидания жизни.', 'Дино Буцати', '2-266-11162', 1940,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (9, 'Автостопом по галактике', 'серия юмористических научно-фантастических романов английского писателя.', ' Дуглас Адамс', '2-266-11163', 1982,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (10, '1984', 'Название романа, его терминология и даже имя автора впоследствии стали нарицательными и употребляются для обозначения общественного уклада, напоминающего описанный в романе «1984» тоталитаризм.', 'Джордж Оруэлл', '2-266-11156', 1964,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (11, 'Скотный двор', 'В повести изображена эволюция состояния животных, изгнавших со скотного двора (первоначально называвшегося ферма «Усадьба») его предыдущего владельца, жестокого мистера Джонса, от безграничной свободы к диктатуре свиньи по кличке Наполеон.', 'Джордж Оруэлл', '2-266-11165', 1944,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (12, 'Финансист', 'Драйзер показывает, как окружавшая Каупервуда финансово-экономическая среда уже с детства формирует в нём психологию коммерсанта и биржевого дилера, для которого все средства хороши, если они помогают достигнуть власти и богатства. ', 'Теодор Драйзер', '2-266-11156', 1912,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (13, 'Стоик', 'После неудачи в Чикаго, когда противники не позволили ему продлить транспортные концессии, Каупервуд переносит деятельность в Лондон, решив заняться строительством линий метрополитена. ', 'Теодор Драйзер', '2-266-11166', 1947,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (14, 'Титан', 'В произведении описывается жизнь Каупервуда после его переезда из Филадельфии в Чикаго.', 'Теодор Драйзер', '2-266-11167', 1914,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (15, 'Американская трагедия', 'Сюжет основан на случае убийства в 1906 году Честером Джилеттом своей девушки Грейс Браун и схожем случае с Карлайлом Харрисом.', 'Теодор Драйзер', '2-266-11178', 1925,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (16, 'Солярис', 'фантастический роман Станислава Лема, описывающий взаимоотношения людей будущего c разумным Океаном планеты Солярис.', 'Станислав Лем', '2-266-11179', 1961,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (17, 'Я, робот', 'сборник научно-фантастических рассказов Айзека Азимова, опубликованный в 1950 году американским издательством Gnome Press и оказавший большое влияние на современную научно-фантастическую литературу.', 'Айзек Азимов', '2-266-11180', 1964,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (18, 'Одиночество в сети', 'Действие романа происходит в середине девяностых годов XX века. Главные герои знакомятся в глобальной сети Интернет благодаря электронной почте и ICQ. Они общаются, влюбляются, переживают.', 'Януш Вишневский', '2-266-11181', 2001,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (19, 'Мемуары гейши', 'В романе от первого лица рассказывается вымышленная история о гейше, работающей в Киото, Япония, до и после Второй мировой войны.', 'Артур Голден', '2-266-11182', 1997,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (20, 'Луна жестко стелет', 'Время и место действия: Луна — Земля с 13 мая 2075 года по октябрь 2076 года.', 'Роберт Хайнлайн', '2-266-11183', 1965,  false);
insert into book (id, title, description, author, isbn, printYear, readAlready) values (21, 'Государь', 'трактат флорентийского мыслителя и государственного деятеля, в котором описываются методология захвата власти, методы правления и умения, необходимые для идеального правителя.', 'Николо Макиавелли', '2-266-11190', 1513,  false);
