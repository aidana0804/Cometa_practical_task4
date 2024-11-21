
#!/bin/bash
# Скрипт принимает имя файла в качестве аргумента, подсчитывает количество строк
# и сохраняет результат в новый файл.

# Проверка наличия аргумента
if [ -z "$1" ]; then
    echo "Ошибка: Укажите имя файла как аргумент."
    exit 1
fi

# Проверка существования файла
if [ ! -f "$1" ]; then
    echo "Ошибка: Файл $1 не найден."
    exit 1
fi

# Подсчет строк и сохранение результата
line_count=$(wc -l < "$1")
output_file="lines_in_$1.txt"
echo "Количество строк в файле $1: $line_count" > "$output_file"

# Вывод имени файла с результатом
echo "Результат сохранен в файл $output_file"
