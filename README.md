<h1>Bookcase</h1>

![List](/1.png?raw=true "List")

CRUD web приложение "Книжная полка". Использует:

Spring WEB MVC;
Hibernate;
MySQL DB.

Возможности:

Список книг;
Удаление/Добавление/Редактирование книги;
Статус книги "Прочтено"/"Не прочтено";
Фильтрация книг: "Прочтено", "Не прочтено", "Все";
Пагинация по 10 книг на странице;
Поиск по названию;

Для сборки проекта используется Maven. Приложение тестировалось на Tomcat 8. По умолчанию используется база данных "test" с уч. данными "root"/"root". SQL-скрипт для создания и наполнения БД находится в /src/main/resources/.
