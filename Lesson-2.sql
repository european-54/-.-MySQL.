2.Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.

create database example;
SHOW DATABASES;
use example;
create table example(id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(12));

/* Выполняем задание, используя MySQL 8.0 Command Line Client.

create database example;  - данная команда с параметрами создаст базу данных example.

SHOW DATABASES;   - данная команда с параметрами отображает список баз(убедимся, что наша база создана).

use example;   - данная команда с параметрами выберет нашу базу, чтоб начать редактирование.

create table example(id INT PRIMARY KEY AUTO_INCREMENT, name VARCHAR(12));   - данная команда с параметрами
   создаст в нашей базе таблицу, состоящую из двух столбцов, числового id
   и строкового name.
*/

3.Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.

CMD команды
cd C:\Program Files\MySQL\MySQL Server 8.0\bin   -- данная команда, с указанием пути в командной строке, запускает MySQL Server 8.0

mysqldump -u root -p example > C:\Users\1\Desktop\-.-MySQL\-.-MySQL..git\dump.sql   /* В CMD. Данная команда с параметрами, также
 в командной строке, создает дамп базы данных example  */ 

create database simple;   -- В клиенте. Данная команда с параметрами, но уже в клиенте, создаст новую пустую базу данных simple.   

mysql -u root -p simple <C:\Users\1\Desktop\-.-MySQL\-.-MySQL..git\dump.sql   /* В CMD. Данная команда с параметрами, снова в командной строке,
запишет данные из дампа базы данных example во вновь созданную базу данных simple (наполнит её содержимым).  */

4.(по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы
 help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.
 
 -- Запускаем CMD с правами администратора
 
 cd C:\Program Files\MySQL\MySQL Server 8.0\bin   -- данная команда, с указанием пути в командной строке, направит в директорию bin.

mysqldump --opt --where="1 limit 100" mysql help_keyword > help.sql   /* Данная команда с параметрами в СМД создаст
 дамп единственной таблицы help_keyword базы данных mysql(файл help.sql), причем дамп будет содержать только первые 100 строк таблицы.  */
 