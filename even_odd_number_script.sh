
#!/bin/bash
# Скрипт проверяет, является ли введенное число четным или нечетным.

# Запрос числа от пользователя
read -p "Введите число: " number

# Проверка четности
if (( number % 2 == 0 )); then
    echo "Число $number четное."
else
    echo "Число $number нечетное."
fi


