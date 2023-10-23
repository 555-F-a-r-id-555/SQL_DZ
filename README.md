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
