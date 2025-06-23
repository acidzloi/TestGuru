# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Создание пользователей
users = User.create!([
  { name: 'Vasya' },
  { name: 'Petya' },
  { name: 'Dima' }
])

# Создание категорий
categories = Category.create!([
  { title: 'Средневековье' },
  { title: 'Новое время' },
  { title: 'XIX век' }
])

# Создание тестов
tests = Test.create!([
  { title: 'Крестовые походы', level: 1, category: categories[0] },
  { title: 'Французская революция', level: 2, category: categories[1] },
  { title: 'Отечественная война 1812', level: 3, category: categories[2] }
])

# Создание вопросов
questions = Question.create!([
  { body: 'В каком году начался Первый крестовый поход?', test: tests[0] },
  { body: 'Кто возглавил поход 1096 года?', test: tests[0] },
  { body: 'Какая дата считается началом Французской революции?', test: tests[1] },
  { body: 'Как называлась крепость, взятие которой стало символом начала революции?', test: tests[1] },
  { body: 'Кто командовал русской армией в начале Отечественной войны 1812 года?', test: tests[2] },
  { body: 'Какая битва стала поворотным моментом войны 1812 года?', test: tests[2] },
  { body: 'Как называлась тактика, использованная русскими для истощения армии Наполеона?', test: tests[2] },
])

# Создание ответов
Answer.create!([
  { body: '1096 год', correct: true, question: questions[0] },
  { body: '1204 год', correct: false, question: questions[0] },
  { body: 'Папа Урбан II', correct: false, question: questions[1] },
  { body: 'Пётр Пустынник', correct: true, question: questions[1] },
  { body: '1789 год', correct: true, question: questions[2] },
  { body: '1812 год', correct: false, question: questions[2] },
  { body: 'Бастилия', correct: true, question: questions[3] },
  { body: 'Лувр', correct: false, question: questions[3] },
  { body: 'Михаил Кутузов', correct: false, question: questions[4] },
  { body: 'Михаил Барклай-де-Толли', correct: true, question: questions[4] },
  { body: 'Бородинское сражение', correct: true, question: questions[5] },
  { body: 'Сражение при Ватерлоо', correct: false, question: questions[5] },
  { body: 'Тактика выжженной земли', correct: true, question: questions[6] },
  { body: 'Молниеносная атака', correct: false, question: questions[6] }
])
