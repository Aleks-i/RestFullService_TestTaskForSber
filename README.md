               Задача:
Приложение должно иметь базу данных (для тестов использовать «In-memory database mode»)
Устанавливать подключение к БД
В БД необходимо создать две таблицы: Отделы и Сотрудники.
БД должна заполняться тестовыми данными.
Для отделов хранить название отдела.
Для сотрудников хранить: отдел, ФИО сотрудника, дату его рождения и его зарплату.
Написать (и уметь публиковать «руками» на сервер Tomcat) Web-сервис (RESTful) для доступа к данным, который будет выбирать данные из БД и сохранять/изменять/удалять данные в БД.
Написать (и так же уметь публиковать «руками» на сервер Tomcat) простое Web-приложение для работы с отделами и сотрудниками отделов. Данное приложение для работы с БД должно использовать Web-сервис указанный выше.
Web - приложение должно позволять:
· посмотреть список отделов и среднюю зарплату (рассчитывается автоматически) по этим отделам;
· список сотрудников в отделах с указанием зарплаты для каждого сотрудника и полем поиска для поиска сотрудников родившихся в определенную дату или в период между датами (вторая списочная форма);
· изменять (добавлять/редактировать/удалять) вышеуказанные данные.
Результат сборки приложения - 2 WAR файла:
· WAR файл для приложения REST-service;
o model
o dao
o services < - > rest
· WAR файл для приложения c WEB – интерфейсом.
o model
o services < - > rest
o web

                Решение:
В данном репозитории выполнен 1 - ый этап тестового задания. Серверная часть WEB приложения.
Доступ к DAO осуществляется посредством Data jpa. Через слой сервиса и рест контроллеров отдается клиенту в формате JSON.
Тесты сервиса в Junit 5.
Для логирования в файл переменная среды окружения - SBER_ROOT
 




<!--CURL for test

####                DepartmentRestController

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/65b08fb8531e46ff9d8b421310856b68)](https://app.codacy.com/gh/Aleks-i/RestFullService_TestTaskForSber?utm_source=github.com&utm_medium=referral&utm_content=Aleks-i/RestFullService_TestTaskForSber&utm_campaign=Badge_Grade)

#### get All Departments
curl -s http://localhost:8080/testtaskforsber/sber/departments
-->