#!/usr/bin/env bats

# Загружаем наши функции
load "../src/main.sh"

@test "sum: складывает два числа" {
    result="$(add 14 29)"
    [ "$result" -eq 43 ]
}

@test "even: возвращает true для чётного" {
    result="$(is_even 12)"
    [ "$result" = "true" ]
}

@test "even: возвращает false для нечётного" {
    result="$(is_even 39)"
    [ "$result" = "false" ]
}

@test "greet: приветствует переданное имя" {
    result="$(greet "Bash")"
    [ "$result" = "Hello, Bash!" ]
}

@test "greet: использует значение по умолчанию" {
    result="$(greet)"
    [ "$result" = "Hello, World!" ]
}
