############################################################### Файлы и папки

# Общие команды Linux для работы с файлами и папками. Вызов документации по командам

# Напишем первую команду в терминале. По традиции это вывод текста Hello, world!

echo "Hello, world!"
echo 'Hello, world!'
echo Hello, world!


# Очистка экрана
clear
Ctrl + L


# Просмотреть текущего пользователя
whoami
who

# Перемещение по директориям
# Текущую директорию можно посмотреть с помощью команды pwd:
pwd

# Поднимемся на уровень выше, чтобы оказаться в директории /home
cd ..

# Вернемся в директорию /home/ubuntu с помощью команды cd ubuntu:
cd ubuntu

# Теперь еще раз зайдем в директорию /home, но используем другую команду: cd /home

# И зайдем еще раз в домашнюю директорию, но не с помощью команды cd ubuntu (это относительный путь к папке), а посредством указания абсолютного пути
cd /home/ubuntu

# Еще один способ попасть в домашнюю директорию — применить команду 
cd ~

# А теперь можно перейти в корневую папку. Это директория самого верхнего уровня, она обозначается как /. Соответственно, команда для перехода в нее — 
cd /

# Просмотр содержимого директории
# Посмотреть содержимое директории можно с помощью команды ls:
ls

#!! Отличие в отображении файлов и папок
# Показать домашние директории пользователей
ls /home/

# Посмотреть расширенную информацию о файлах и папках в данной директории можно с помощью команды 
ls -l

# Здесь мы видим не только названия файлов и папок, но и информацию о правах на файлы, список владельцев файлов, размер и дату последнего модифицирования

# Чтобы увидеть еще и скрытые файлы (их название начинается с точки), нужно запустить команду 
ls -a 

# а чтобы совместить показ скрытых файлов с расширенной информацией о файлах — применить команду 
ls -la

# Чтобы посмотреть содержимое папки, не заходя в нее, можно применить команду наподобие 
cd /home 
# (указывается абсолютный или относительный путь) 

# или 
cd -l /home
# если нужна подробная информация о файлах

# Создание и изменение папок
# Вернемся в домашнюю директорию и создадим там папку test_dir с помощью команды 
mkdir test_dir

# Затем проверим наличие новой папки в домашней директории, введя команду 
ls

# Способы создания файла:
echo > newFile1.txt
cat > newFile2.txt
touch newFile3.txt
> newFile4.txt

nano newFile5.txt

# С помощью команды mv можно перемещать или переименовывать файлы и папки. Переименуем папку test_dir в test_dir2 с помощью команды 
mv test_dir test_dir2 

# и проверим содержимое текущей директории
ls

# Удаление файлов и папок

# Файлы и директории удаляются с помощью команды rm. В случае директорий нужно указывать дополнительный параметр -r, который отвечает за рекурсивное удаление, так как должна быть удалена не только сама директория, но и ее содержимое: 
rm -r test_dir2

# После этого проверим, что из текущей папки исчезла test_dir2
ls

# Создание текстовых файлов

# А теперь создадим пустой текстовый файл test.txt, используя команду echo без аргументов
echo > test.txt 

# Проверим содержимое директории
ls

# Запишем текст в этот файл 
echo Hello > test.txt

# Посмотрим на содержимое файла при помощи команды 
less test.txt

# Выйти из просмотра файла можно, нажав клавишу q. Допишем в файл слово world 
echo world >> test.txt 

# Просмотрим содержимое файла 
less test.txt

# А теперь перезапишем содержимое файла с помощью команды 
echo “new text” > test.txt 
# (в этот раз текст взят в двойные кавычки, так как это более приемлемый вариант для работы с ним) 

# и проверим содержимое test.txt, используя 
less test.txt

# Видим, что старый текст исчез и на его месте появился новый. Создадим копию файла в той же директории 
cp test.txt test2.txt 

# Затем проверим содержимое текущей директории и увидим там два текстовых файла
ls

# Удалим старый файл 
rm test.txt 

# Затем создадим папку new и переместим туда файл test2.txt 
mv test2.txt new/ 

# Посмотрим содержимое текущего каталога
ls

# а затем — содержимое папки new
ls new

# Переименуем файл test2.txt в test3.txt, не заходя в папку new 

mv new/test2.txt new/test3.txt 

# Убедимся, что файл переименован, используя команду 
ls

# Удалим папку new рекурсивно
rm -r new

# и убедимся, что домашняя директория пуста
ls

#!! При наборе названий файлов и папок в терминале не обязательно вводить их имена полностью — достаточно нажать клавишу Tab, чтобы имя продолжилось автоматически. 

#!! Также удобно применять клавиши «Вниз» и «Вверх», если требуется заново набрать команду, которая уже была введена до этого

# Вызов документации по командам
# Чтобы просмотреть информацию по команде, достаточно набрать ее и --help после нее (перед help — два дефиса). Например, так можно посмотреть информацию по команде ls 
ls --help

# Другой вариант вызова информации — команда man (от слова manual). 
man ls
# Чтобы выйти из мануала, следует нажать клавишу q


############################################################## less, more, tail, head
•	глянем справку
more --help

•	выведем текст файла
more mciri_poem.txt

•	выведем по 15 строк, начиная со 2-й главы
more +33 -15 mciri_poem.txt

•	найдем место, где встречается слово «однажды»
less -N -I -p "однажды" mciri_poem.txt

•	выведем первую строку из файла
head 1 mciri_poem.txt

•	вывведем из файла последние 3 строки
tail -3 mciri_poem.txt


############################################################## nano
nano test.txt 
nano ls.txt

# Запуск с резервной копией
nano -B mciri_poem.txt

# горячие клавиши:
	Ctrl+k – вырезать строку с курсором
	Ctrl+u – вставить из буфера, в месте курсора
	Ctrl+6 – начать выделение
	Ctrl+Shift+6 – скопировать выделенное
	Ctrl+w – поиск строки
	Ctrl+\ - поиск с заменой
	Ctrk+r – вставка из другого файла в текущее место курсора
	Ctrl+c - Показать позицию курсора
	Ctrl+_ (Ctrl+Shift+-) - Переместить курсор в позицию


############################################################## vim
vimtutor - обучалка
o	Возможно, потребуется установить (обучалку): 
	sudo apt install vim-runtime


# Редактируем файлы с помощью редактора vim
vim test.txt 
vim ls.txt 

# горячие клавиши (в режиме команд (normal)):
o	:w <Enter> - сохраним файл
o	:q <Enter> - выйдем из редактора
o	dd – вырезает строку
o	5dd – вырезает 5 строк
o	2dw – вырезает 2 слова
o	p – вставить из буфера
o	u – undo
o	3u – undo 3 times
o	2w – на 2 слова вправо
o	10h – на 10 символов влево
o	3j – на 3 строки вниз
o	3k – на 3 строки вверх
o	/строка – ищет строку
o	n – перейти к следующему результату поиска
o	Shift+n – перейти к предыдущему результату поиска

# режимы vim
o	(Esc) normal: режим команд
o	вставки
	(i) insert: режим вставки
	(a) append: режим вставки
	(R) replace: режим замены
o	 (v) visual: визуальный – для работы с выделеным текстом
o	(:!) режим внешних команд

#################################################### Ссылки
# выведем содержимое папки вместе с inodes (ключик -i)
ls -li
	в первой колонке номера inode

# создадим файл
echo hi all > original_file

# создадим жесткую ссылку на него
ln original_file hardlink

# создадим мягкую ссылку на него
ln -s original_file softlink

