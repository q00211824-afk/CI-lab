#!/usr/bin/env bash

# Функция 1: сложение
add() {
    echo $(($1 + $2))
}

# Функция 2: проверка чётности
is_even() {
    if [ $(($1 % 2)) -eq 0 ]; then
        echo "true"
    else
        echo "false"
    fi
}

# Функция 3: приветствие
greet() {
    echo "Hello, ${1:-World}!"
}

"$@"
