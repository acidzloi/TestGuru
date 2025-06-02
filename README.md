# README

# TestGuru

Онлайн-платформа для обучения ruby rails. Проект выполняется в рамках обучения в [Thinknetica](http://www.thinknetica.com).

## О проекте

Приложение позволяет:
- просматривать информацию о проекте
- просматривать информацию об авторе проекта

## Версия

Текущая версия: `0.1.0`

## Настройки

- Язык интерфейса: `русский (ru)`
- Часовой пояс: `Москва`

## Страницы

- [`/about`](http://localhost:3000/about) — информация о проекте
- [`/about/author`](http://localhost:3000/about/author) — информация об авторе

## Сущности проекта

Проект моделирует следующие объекты реального мира:

1. **Автор (Author)** – создатель теста (связан с пользователем)

## Установка и запуск

```bash
git clone https://github.com/acidzloi/TestGuru.git
cd test_guru
bundle install
bin/rails db:create db:migrate
bin/rails s