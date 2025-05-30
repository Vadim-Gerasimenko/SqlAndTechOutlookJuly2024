# Технический кругозор и SQL 

*В курсе рассматриваются [технические темы](#technical-themes) и [стандарт SQL](#sql-standart)*

<h2 id="technical-themes">Технические темы</h2>

### Формы:

> *Задача* [***Элементы форм***](TechnicalBackGround/Forms/FormElements.jpg):

    Изучить форму расширенного поиска на сайте http://auto.drom.ru/.
    Сделать скриншот формы и подпишисать каждый элемент.

> *Задача* [***Анализ формы***](TechnicalBackGround/Forms/FormAnalysis.txt):

    Проанализировать форму из предыдущего задания и выписать логику её работы. 
    Проанализировать зависимости между элементами.

### XML

> *Задача* [***Анализ XML***](TechnicalBackGround/Xml/Analysis):

    Описать все сущности из XML, расположенного в ресурсах указанной директории.
    Выявить все характеристики и их смысл, определить их типы данных.

> *Задача* [***Создание XML***](TechnicalBackGround/Xml/Creation/countries.xml):

    Создать XML-файл, который содержит список стран с городами.
    В документе должно быть 3-5 стран, для каждой страны указать следующие данные: 
        - название на русском
        - название на английском
        - код страны
        - код валюты 
        - список из нескольких городов этой страны
        
            Для каждого города нужно указать:
                - название на русском
                - название на английском
                - численность населения

### JSON

> *Задача* [***Анализ JSON***](TechnicalBackGround/Json/Analysis):

    Описать все сущности из JSON, расположенного в ресурсах указанной директории.
    Выявить все характеристики и их смысл, определить их типы данных.

> *Задача* [***Создание JSON***](TechnicalBackGround/Json/Creation/countries.json):

    Создать JSON-файл, который содержит список стран с городами.
    В документе должно быть 3-5 стран, для каждой страны указать следующие данные: 
        - название на русском
        - название на английском
        - код страны
        - код валюты 
        - список из нескольких городов этой страны
        
            Для каждого города нужно указать:
                - название на русском
                - название на английском
                - численность населения

### Postman

> *Задача* [***Формирование запросов***](TechnicalBackGround/Postman/RequestsForming.pdf):

    Сделать запрос, который ищет новости по фразе «рейс», так, чтобы выдалось 20 новостей.

### Fiddler

> *Задача* [***Fiddler***](TechnicalBackGround/Fiddler/Fiddler.pdf):

  Исследовать страницу: https://news.s7.ru/news
  Перехватить запросы, изучить эти запросы и ответы на них.

### SOAP UI

> *Задача* [***SoapUi***](TechnicalBackGround/SoapUi/SoapUi.pdf):

    Подключиться к сервису ЦБ РФ и выполнить такие запросы,
    чтобы получить следующую информацию:
    - новости с 1 по 15 числа прошлого месяца включительно
    - динамика курса японской иены за прошлый месяц

### Linux Console

> *Задача* [***Практика Linux***](TechnicalBackGround/LinuxConsole/Practice/LinuxPractice.pdf):

    - Установить Putty
    - Присоединиться к серверу
    - Попробовать попереходить по путям, посоздавать/поудалять файлы и папки
    - Узнать свой IP и MAC-адрес
    - Сохранить вывод ifconfig в файл
    - Поработать с командами mc и top
    - Создать и запустить sh-скрипт

> *Задача* [***Архив Linux***](TechnicalBackGround/LinuxConsole/Archive/linuxArchive.sh):

    Написать скрипт, который в текущей папке:
        - Создает папку с именем – ваша фамилия на английском
        - В этой папке создает текстовый файл 1.txt
        - Написать в этом файле произвольный текст
        - Сделать в папке копию этого файла, назвать 2.txt
        - Заархивировать эту папку в формат zip
        - Удалить папку, оставив только архив

### Windows Console

> *Задача* [***Практика Windows***](TechnicalBackGround/WindowsConsole/Practice/WindowsPractice.pdf):

    - Открыть консоль обычным способом
    - Открыть консоль с правами администратора
    - Перейти в папку C:\Windows\System32
    - Перейти в папку на уровень вверх
    - Перейти на другой диск
    - Скопировать файл, имя которого содержит пробел
    - Узнать свой IP и MAC-адрес
    - Сохранить вывод ipconfig в файл network.txt
    - Сделать копию Word-файла
    - Сравнить эти файлы через fc
    - Поменять один файл, и сравнить повторно

> *Задача* [***Архив Windows***](TechnicalBackGround/WindowsConsole/Archive/windowsArchive.bat):

    Написать скрипт, который в текущей папке:
        - Создает папку с именем – ваша фамилия на английском
        - В этой папке создает текстовый файл 1.txt
        - Написать в этом файле произвольный текст
        - Сделать в папке копию этого файла, назвать 2.txt
        - Заархивировать эту папку в формат zip
        - Удалить папку, оставив только архив

<h2 id="sql-standart">Стандарт SQL</h2>

### Лекция 1:

> *Задача* [***Shop***](Sql/Lesson1/Shop/shop.sql):

    Создать базу данных магазина из 2 таблиц - товары и категории товаров
        - Каждый товар принадлежит некоторой категории
        - Вставить данные в таблицы
        - Попробовать UPDATE, DELETE:
        - Удалить товары с ценой выше 100
        - Изменить название и цену некоторому товару

### Лекция 2:

> *Задача* [***GroupBy***](Sql/Lesson2/GroupBy/groupBy.sql):

    По таблице городов:
        - Вывести все страны вместе с количеством городов
        - Вывести все страны вместе с количеством городов, оставить только страны, в которых не менее 2 городов
        - Вывести все страны вместе с количеством городов, в которых не менее 1 млн человек, оставить только страны, в которых не менее 2 таких городов
        - Найти среднюю численность населения городов по каждой стране, вывести в порядке убывания средней численности

> *Задача* [***Простые запросы***](Sql/Lesson2/SimpleQueries/SimpleQueries.sql):

    по Базе Данных world, таблица city
        - Вывести все строки, но только столбцы имя и дистрикт
        - Вывести только города из России, отсортировать по имени
        - Вывести города из Испании, Португалии и Греции, отсортировать по имени по убыванию
        - Вывести города, у которых население лежит в диапазоне от 300000 до 500000
        - Вывести города, начинающиеся с буквы А
        - Вывести города, содержащие букву А
        - Вывести города из России с населением не менее 1 млн
        - Вывести города из Испании, начинающиеся с буквы A, и города из Греции с численностью до 200000 человек

> *Задача* [***Стандартные функции***](Sql/Lesson2/StandartFunctions/WorldStandartFunctions.sql):

    По таблице стран:
        - Вывести страны в порядке убывания длины названия так, чтоб название страны было в верхнем регистре, а название континента в нижнем
        - Для каждой страны найти радиус окружности, у которой площадь круга такая же, как площадь этой страны. Отсортировать результат по убыванию радиуса
  
    По задаче про магазин:
        - Сделать в таблице товаров поле с типом "дата"
        - Вывести список товаров, так, чтобы день, месяц и год выводились отдельными полями
        - Вывести сколько товаров было в каждый год, который присутствует в этой таблице

### Лекция 3:

> *Задача* [***Join***](Sql/Lesson3/Join.sql):

    - Попробовать CROSS JOIN между таблицами городов и стран
    - При помощи INNER JOIN: вывести код страны, название страны и название города-столицы
    - Сделать запрос, который выводит имя города, его численность, а также код и название его страны
    - Для каждого континента вывести количество городов из этого континента. Учесть, что в Антарктиде городов нет
    - Вывести количество официальных языков для каждой страны в порядке убывания количества этих языков

> *Задача* [***Тестовые данные***](Sql/Lesson3/TestData.sql):

    Написать скрипт, который заполнит БД из задачи Shop категориями и товарами
        - Нужно создать 100 категорий и 5000 товаров
        - Товары должны привязываться к категориям случайным образом
        - Цена должна выставляться случайным образом

### Лекция 4:

> *Задача* [***Сотрудники и отделы***](Sql/Lesson4/Employees.sql):

    В БД есть 2 таблицы:
        department
            id - число, первичный ключ
            name - строка
    
        employee
            id - число, первичный ключ
            department_id - число, внешний ключ на таблицу department
            chief_id - число, внешний ключ на саму таблицу employee
            name - строка
            salary - число

    Написать запросы, используя стандарт SQL и темы курса:
        1.  Вывести список сотрудников в формате: Сотрудник, Отдел сотрудника, Руководитель, Отдел руководителя
        2.	Вывести список сотрудников, получающих заработную плату, большую чем у непосредственного руководителя
        3.	Вывести список сотрудников, получающих максимальную заработную плату в своем отделе
        4.	Вывести список ID отделов, количество сотрудников в которых не превышает 3 человек
        5.	Вывести список сотрудников, не имеющих назначенного руководителя, работающего в том же отделе
        6.	Вывести список наименований отделов с максимальной суммарной зарплатой сотрудников
        7.	Вывести ФИО сотрудника(ов), получающего третью по величине зарплату в организации

### Лекция 5:

> *Задача* [***Мерчандайзинг***](Sql/Lesson5/Merch.sql):

    Агенты
        Есть организации-агенты, которые сотрудничают с компанией S7 Airlines, продавая билеты. 
        У каждого агента есть числовой код, например, 10187.
        Агент имеет несколько пунктов продаж, где продаются билеты. Кроме того, в этих пунктах продаж выставляется сувенирная продукция от S7 .
        Сувенирную продукцию также называют POSm.

    Мерчандайзеры
        Мерчандайзеры – сотрудники S7, которые должны привезти в пункты продаж сувенирную продукцию и расставить ее.
        Каждый мерчандайзер привязан к некоторому городу. Город, в свою очередь, относится к некоторому региону.

    POSm и комплекты POSm
        Есть различные виды продукции, например, ручки, блокноты и т.д.
        В пункты продаж продукция поставляется комплектами.
        Комплект имеет название, а также содержит перечень POSm и количество по каждой позиции.
        Например, в «Комплект 1» входят 5 ручек и 3 блокнота.

    Задача на формирование комплектов POSm
        Когда S7 готовится централизованно разослать сувенирную продукцию по всем пунктам продаж, то создается задача на формирование комплектов POSm.
        У нее есть название и статус.
        В этой БД статус 1 означает «в работе», статус 2 – «выполнена».
        Смысл задачи – что ответственные люди должны сформировать посылки с нужным количеством продукции во все города с пунктами продаж агентов.
        Когда все готово, задаче присваивается статус «выполнена».
     
    Задача на размещение POSm
        Когда задача на формирование комплектов POSm становится выполненной, то создаются конкретные задачи на размещение POSm для мерчандайзеров по конкретным пунктам продаж.
        Заметим, что в каждый пункт продаж не обязательно доставляется 1 комплект. В крупные пункты продаж доставляется 2 или более комплектов.
        Статус у этих задач – 1 («в работе»).
        Когда мерчендайзер доставляет продукцию в пункт продаж, то он переводит задачу в статус 2 («выполнена»).

    Необходимо:
    - Выполнить скрипт merchandising.sql, чтобы создать БД
    - Разобраться со структурой БД, понять что где хранится
    - Составить следующие запросы, используя стандарт SQL и темы курса:
        1.  Вывести ФИО всех мерчандайзеров из сибирского региона
        2.	Вывести информацию о POSm, у которых не задан комментарий
        3.	Для каждого города вывести название города и число мерчандайзеров из этого города. Если там 0 мерчандайзеров, то должно вывестись 0
        4.	Для каждого региона вывести название региона и число мерчандайзеров из этого региона. Если там 0 мерчандайзеров, то должно вывестись 0
        5.	Посчитать сколько единиц каждого вида POSm еще осталось разместить и сколько было размещено
        6.	Посчитать сколько единиц каждого вида POSm было отправлено каждому агенту
        7.	Посчитать сколько у каждого мерчандайзера задач «в работе» и «выполнено». Если 0, то должно вывестись 0
        8.	Найти агентов, у которых более 2 задач на размещение, вывести для каждого из них количество задач

> *Задача* [***Университет***](Sql/Lesson5/University.sql):

    База данных успеваемости студентов
        База данных должна содержать данные: 
            - о студентах (фамилия, имя, отчество, год поступления, форма обучения (дневная/вечерняя/заочная), номер группы, номер студенческого билета) 
            - об учебном плане (название специальности, дисциплина, семестр, количество отводимых на дисциплину часов, форма отчетности (экзамен/зачет/дифф.зачет))
            - о журнале успеваемости студентов (год/семестр, студент, дисциплина, оценка)
        Перечислены не таблицы и их поля, а данные, которые должны быть в базе данных. Саму базу данных и таблицы нужно спроектировать самостоятельно.
    
    Нужно сделать скрипт, который удаляет эту базу, создает её и наполняет данными. Данных должно быть достаточно, чтобы проверить запросы.
    
    Примерное количество данных, при желании можно вставить больше: 
        - студенты 5-10 записей
        - 3-5 дисциплин
        - успеваемость – по каждому студенту примерно по 5 записей

    Написать запросы, позволяющие:
        1.	для указанной формы обучения посчитать количество студентов этой формы обучения;
        2.	для указанной дисциплины получить количество часов и формы отчетности по этой дисциплине
        3.	найти N студентов с наилучшим средним баллом, вывести их в порядке убывания среднего балла, вывести их вместе с их средним баллом
        4.	найти студентов, которые должны получить стипендию после указанной сессии (год + семестр)
        5.	найти дисциплину, по которой студенты лучше всего учатся
        6.	найти студентов, учащихся выше среднего

