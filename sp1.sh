echo 'Программа для работы с файлами'
echo 'Автор: Перевалова Кристина, 717'

while [ 1=1 ]
do
    echo 'Введите действие: создать (1), удалить (2), переместить (3)'
    read n
    while [ "$n" != "1" ] && [ "$n" != "2" ] && [ "$n" != "3" ]
    do
        echo 'Введите 1 (Создать), 2 (Удалить), или 3 (Переместить)'
        read n
    done
    # запрашивает имя файла
    echo 'Введите имя файла'    
    read f    
    if [ "$n" == "1" ]
    then
        if [ -f $f ]
        then
            echo 'Ошибка: файл существует'
            break
        fi
        touch $f
        echo 'Файл создан'
    elif [ "$n" == "2" ]
    then
        if [ ! -f $f ]
        then
            echo 'Ошибка: файл не найден'
            break
        fi
        rm $f
        echo 'Файл удалён'
    else
        echo 'Введите имя в которую нужно переместить файл'
        read d
        if [ ! -d $d ]
        then
            echo 'Ошибка: директории, в которую нужно переместить файл, не существует'
            break
        fi
        mv $f $d
        echo 'Файл перемещен'
    
    fi
    echo 'Продолжить? Да (1) / Нет (2)'
    read c
    while [ "$c" != "1" ] && [ "$c" != "2" ]
    do
        echo 'Введите 1 (Да) или 2 (Нет)'
        read c
    done
    if [ "$c" == "2" ]
    then
        break
    fi
done
