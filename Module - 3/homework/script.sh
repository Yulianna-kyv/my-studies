#!/bin/bash

# 1. Вивести список файлів та тек
echo "Список файлів та тек:"
ls

# 2. Створити дві нові теки
mkdir dir1 dir2
echo "Теки dir1 та dir2 створені."

# 3. Зайти в одну з нових тек
cd dir1
echo "Перейшли в теку dir1."

# 4. Створити декілька файлів
touch file1.txt file2.txt
echo "Створено файли file1.txt та file2.txt."

# 5. Записати текст в один з файлів
echo "Hello, World!" > file1.txt
echo "Текст записано в file1.txt."

# 6. Вивести текст з файлу на екран
echo "Виведення тексту з file1.txt:"
cat file1.txt

# 7. Вивести вміст теки
echo "Вміст теки dir1:"
ls

# 8. Перемістити пустий файл в іншу теку
mv file1.txt ../dir2
echo "Переміщено file1.txt в dir2."

# 9. Зайти в теку в яку був переміщений файл
cd ../dir2
echo "Перейшли в теку dir2."

# 10. Записати в файл текст "name": "test"
echo '{"name": "test"}' > file1.txt
echo 'Текст записано в file1.txt: {"name": "test"}'

# 11. Здійснити пошук з допомогою команди grep по слову name
grep "name" file1.txt

# 12. Якщо name буде test, вивести на екран повідомлення
if grep -q '"name": "test"' file1.txt; then
    echo "Баш-скрипт успішно відпрацював"
else
    echo "Помилка: не знайдено 'name': 'test'."
fi