
#!/bin/bash
# Скрипт изменяет владельца и права доступа для всех файлов и каталогов внутри заданног$

# Укажите каталог в качестве аргумента
if [ -z "$1" ]; then
    echo "Ошибка: Укажите каталог как аргумент."
    exit 1
fi

# Проверка существования каталога
if [ ! -d "$1" ]; then
    echo "Ошибка: Каталог $1 не найден."
    exit 1
fi

# Изменение владельца на user1 и группы на testgrp
chown -R user1:testgrp "$1"

# Установка прав доступа:
# Для владельца - все права (rwx)
# Для группы - чтение и запись (rw-)
# Для остальных - только чтение (r--)
chmod -R 764 "$1"

echo "Владелец, группа и права доступа успешно изменены для всех файлов и папок в катал$






