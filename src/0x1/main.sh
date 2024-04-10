#!/bin/bash

read -p "Enter some text: " param

# Проверка, что каждый символ param является цифрой через регулярное выражение
# Также перенаправление вывода команды expr в "пустоту"
if expr "$param" : '[0-9]\+$' > /dev/null; then
   echo "Invalid input"
else
    echo "You entered \"$param\""
fi
