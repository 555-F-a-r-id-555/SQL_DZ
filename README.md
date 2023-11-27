# SQL_DZ

### SQL_DZ_1

    1.Создание таблицы mobile_phones
    Создайте таблицу с мобильными телефонами mobile_phones, используя графический 
    интерфейс. Заполните БД данными.
        'iPhone X', 'Apple', 3, 76000
        'iPhone 8', 'Apple', 2, 51000
        'Galaxy S9', 'Samsung', 2, 56000
        'Galaxy S8', 'Samsung', 1, 41000
        'P20 Pro', 'Huawei', 5, 36000
    -- При написании запросов указывайте не только имя таблицы, но и схему.
    -- Название вашей схемы - itresume8663785
    -- Например, itresume8663785.tablename
    
    2.Выборка товаров по количеству
    У вас есть таблица с мобильными телефонами mobile_phones.
    Вывести название (product_name), производителя (manufacturer) и цену (price) для товаров из 
    базы данных,
    у которых количество (product_count) больше чем 2.
    
    3. Ассортимент товаров марки “Samsung”
    Выведите весь ассортимент товаров марки Samsung из таблицы mobile_phones, и 
    вывести поля id, product_name, manufacturer, product_count и price для этих 
    записей.
    
    4 Товары с упоминанием "Iphone"  
     
    Выбрать все товары из таблицы mobile_phones, в которых есть упоминание "Iphone" 
    (независимо от регистра букв), и вывести 
    поля id, product_name, manufacturer, product_count и price для этихзаписей.
    
    5  Товары с упоминанием "Samsung"
    Выбрать все товары из таблицы mobile_phones, в которых есть упоминание "Samsung" 
    (независимо от регистра букв), и вывести 
    поля id, product_name, manufacturer, product_count и price для этих записей. 
    
     6 Товары, в которых есть цифры
    Выбрать все записи из таблицы mobile_phones, где в поле product_name есть хотя бы 
    одна цифра, и вывести 
    поля id, product_name, manufacturer, product_count и price для этих записей.
    
    7 Товары с цифрой 8
    Выбрать все записи из таблицы mobile_phones, в которых 
    поле product_name содержит цифру 8, и вывести 
    поля id, product_name, manufacturer, product_count и price для этих записей.

### SQL_DZ_2

    1. Создание таблицы sales
    Создать таблицу sales с тремя столбцами: id, order_date (дата заказа) и count_product
    (количество продуктов в заказе).
    Затем заполнить эту таблицу данными, включая информацию о дате заказа и количестве
    продуктов в каждом заказе.
    Заполните ее данными.
    '2022-01-01', 156
    '2022-01-02', 180
    '2022-01-03', 21
    '2022-01-04', 124
    '2022-01-05', 341
    Важно: Чтобы проверка прошла успешно, перед нажатием кнопки Проверить студент должен
    написать запрос и нажать кнопку Выполнить.

    2. Тип заказа в sales
    Для данных таблицы sales укажите тип заказа в зависимости от кол-ва :
    меньше 100 - Маленький заказ,
    от 100 до 300 - Средний заказ,
    больше 300 - Большой заказ.
    Выведите таблицу с названиями столбцов Номер заказа, Количество продукта, Тип

    3. Создание таблицы orders
    Используя операторы языка SQL, создайте таблицу orders, заполните ее значениями.
    'e03', '15.00', 'OPEN'
    'e01', '25.50', 'OPEN'
    'e05', '100.70', 'CLOSED'
    'e02', '22.18', 'OPEN'
    'e04', '9.50', 'CANCELLED'
    Выберите все заказы. В зависимости от поля order_status выведите столбец full_order_status:
    OPEN – «Order is in open state» ;
    CLOSED - «Order is closed»;
    CANCELLED - «Order is cancelled».

    4. Статус заказа
    Выбрать данные из таблицы orders и вывести столбцы id, employee_id, amount, и order_status 
    с дополнительным столбцом full_order_status, который содержит описание статуса заказа на 
    основе значения столбца 'order_status'.
    OPEN – «Order is in open state» ;
    CLOSED - «Order is closed»;
    CANCELLED - «Order is cancelled» *в остальных случаях выведите «Not mentioned»

### SQL_DZ_3

    1. Сортировка данных

    Отсортируйте все данные таблицы staff по полю заработная плата salary в порядке:

    возрастания

    2. Сортировка данных

    Отсортируйте все данные в таблице staff по полю заработная плата salary в порядке:

    убывания


    3. Максимальная заработная плата

    Выбрать пять самых высокооплачиваемых сотрудников из таблицы staff и вывести их зарплаты в убывающем порядке (начиная с самой высокой зарплаты).


    4. Суммарная зарплата

    Получить обобщенную информацию о зарплатах сотрудников в таблице 'staff'.
    Для этого сгруппировать сотрудников по их должностям ('post') и вычислить общую сумму зарплаты salary для каждой должности.


    5. Количество сотрудников определенного возраста

    Подсчитать количество сотрудников в таблице staff со специальностью post 'Рабочий',
    и возраст которых находится в диапазоне от 24 до 49 лет включительно.


    6. Количество специальностей

    Определить количество уникальных специальностей (должностей) среди сотрудников в таблице 'staff'.


    7. Сотрудники младше 30 лет

    Выбрать должности (специальности) сотрудников в таблице staff, у которых средний возраст (возраст в среднем) младше 30 лет.
    Группировать данные по специальностям post и выводить только те специальности, для которых средний возраст меньше 30 лет.

### SQL_DZ_4

    task1 
    Лайки

    Подсчитать общее количество лайков, поставленных пользователями, 
    чей возраст меньше 12 лет к текущей дате. Для этого объединить таблицы likes, media, и profiles, 
    и учесть только лайки, оставленные пользователями, возраст которых составляет менее 12 лет с момента их дня рождения.


    task2
    Кто больше ставит лайков


    Подсчитать количество лайков, 
    оставленных пользователями, в зависимости от их гендера. 
    Для этого объединить таблицы likes и profiles, 
    сгруппировать данные по полу пользователей и вывести результат в убывающем порядке, начиная с наибольшего количества лайков.


    task3
    Кто не отправлял сообщения

    Выбрать пользователей из таблицы users, 
    которые не отправили ни одного сообщения (не имеют записей в таблице 'messages').


    task4
    Кто больше всего написал сообщений


    У вас есть база данных с тремя таблицами: users (пользователи),
    messages (сообщения) и friend_requests (запросы на добавление в друзья).

    Каждая запись в таблице users содержит информацию о пользователе, 
    включая уникальный идентификатор (id), имя (firstname), и фамилию (lastname).

    Таблица friend_requests содержит информацию о запросах на добавление в друзья с полями: 
    уникальный идентификатор (id), идентификатор инициатора запроса (initiator_user_id), 
    идентификатор целевого пользователя (target_user_id) и статус запроса (status), 
    где 'approved' указывает на утвержденные запросы.

    Таблица messages содержит информацию о сообщениях с полями: уникальный идентификатор (id), 
    идентификатор отправителя (from_user_id), идентификатор получателя (to_user_id) и текст сообщения (message_text).

    Ваша задача состоит в том, чтобы написать SQL-запрос, который вернет идентификатор и имя отправителя, 
    который отправил наибольшее количество сообщений пользователю с идентификатором 1, 
    при условии, что запросы на добавление в друзья между отправителем и получателем сообщений имеют статус 'approved'.

    Также, учтите, что некоторые пользователи могут быть отправителями сообщений, 
    но не обязательно быть друзьями (не иметь утвержденных запросов на добавление в друзья).

### SQL_DZ_5

    -- task1

    Ранжированный список пользователей

    Определить ранг отправителей сообщений на основе количества сообщений, 
    которые они отправили. Вывести ранг, имя и фамилию отправителей, а также количество сообщений, 
    которые они отправили. Отсортировать результат в порядке убывания количества сообщений.

    Для выполнения этой задачи используйте следующие таблицы:

    users: Эта таблица содержит информацию о пользователях, 
    включая их идентификаторы (id), 
    имена (firstname), 
    фамилии (lastname) и другие данные.

    messages: В этой таблице хранятся записи о сообщениях, 
    включая информацию о идентификаторах сообщений (id), 
    отправителях (from_user_id) и другие детали сообщений.

    -- task2

    Сортировка сообщений

    Составить список сообщений из таблицы messages, включая их уникальные идентификаторы, 
    отправителя (from_user_id), получателя (to_user_id), текст сообщения (body), 
    дату создания (created_at), а также информацию о времени, 
    прошедшем между этим сообщением и следующим (lead_time и minute_lead_diff) и времени, 
    прошедшем между этим сообщением и предыдущим (lag_time и minute_lag_diff). 
    Время указано в минутах.

### SQL_DZ_6

    1) Написать функцию, которая удаляет всю информацию об указанном пользователе из БД vk. 
    Пользователь задается по id. 
    Удалить нужно все сообщения, лайки, медиа записи, профиль и запись из таблицы users. 
    Функция должна возвращать номер пользователя.

    2) Предыдущую задачу решить с помощью процедуры и обернуть используемые команды в транзакцию внутри процедуры.

    3) * Написать триггер, который проверяет новое появляющееся сообщество. 
    Длина названия сообщества (поле name) должна быть не менее 5 символов. 
    Если требование не выполнено, то выбрасывать исключение с пояснением.
