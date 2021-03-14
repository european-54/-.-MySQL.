1.Заполнить все таблицы БД vk данными (по 10-100 записей в каждой таблице)

2.Написать скрипт, возвращающий список имен (только firstname) пользователей без повторений в алфавитном порядке

select DISTINCT firstname
FROM users
;

3. Написать скрипт, отмечающий несовершеннолетних пользователей как неактивных (поле is_active = false). 
Предварительно добавить такое поле в таблицу profiles со значением по умолчанию = true (или 1)

ALTER TABLE profiles ADD is_active BIT DEFAULT false NULL;


# Проставим в колонке is_active значение false(0) пользователям < 18 лет.

UPDATE profiles
SET is_active = 0
WHERE YEAR(CURRENT_TIMESTAMP) - YEAR(birthday) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(birthday, 5)) < 18
;


# Для наглядности добавим колонку с возрастом пользователя

ALTER TABLE profiles ADD age bigint(5);


# Выведем в колонку age возраст пользователей

UPDATE profiles
SET age = YEAR(CURRENT_TIMESTAMP) - YEAR(birthday) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(birthday, 5))
;

4.Написать скрипт, удаляющий сообщения «из будущего» (дата больше сегодняшней)

DELETE FROM messages
WHERE created_at > now()
;

5.Написать название темы курсового проекта (в комментарии)

"Разработка архитектуры хранения банковских счетов".