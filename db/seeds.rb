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
  { title: 'Крестовые походы', level: 1, category_id: categories[0].id },
  { title: 'Французская революция', level: 2, category_id: categories[1].id },
  { title: 'Отечественная война 1812', level: 3, category_id: categories[2].id }
])

# Создание вопросов
questions = Question.create!([
  { body: 'В каком году начался Первый крестовый поход?', test_id: tests[0].id },
  { body: 'Кто возглавил поход 1096 года?', test_id: tests[0].id },
  { body: 'Какая дата считается началом Французской революции?', test_id: tests[1].id },
  { body: 'Как называлась крепость, взятие которой стало символом начала революции?', test_id: tests[1].id },
  { body: 'Кто командовал русской армией в начале Отечественной войны 1812 года?', test_id: tests[2].id },
  { body: 'Какая битва стала поворотным моментом войны 1812 года?', test_id: tests[2].id },
  { body: 'Как называлась тактика, использованная русскими для истощения армии Наполеона?', test_id: tests[2].id },
])

# Создание ответов
Answer.create!([
  { body: '1096 год', correct: true, question_id: questions[0].id },
  { body: '1204 год', correct: false, question_id: questions[0].id },
  { body: 'Папа Урбан II', correct: false, question_id: questions[1].id },
  { body: 'Пётр Пустынник', correct: true, question_id: questions[1].id },
  { body: '1789 год', correct: true, question_id: questions[2].id },
  { body: '1812 год', correct: false, question_id: questions[2].id },
  { body: 'Бастилия', correct: true, question_id: questions[3].id },
  { body: 'Лувр', correct: false, question_id: questions[3].id },
  { body: 'Михаил Кутузов', correct: false, question_id: questions[4].id },
  { body: 'Михаил Барклай-де-Толли', correct: true, question_id: questions[4].id },
  { body: 'Бородинское сражение', correct: true, question_id: questions[5].id },
  { body: 'Сражение при Ватерлоо', correct: false, question_id: questions[5].id },
  { body: 'Тактика выжженной земли', correct: true, question_id: questions[6].id },
  { body: 'Молниеносная атака', correct: false, question_id: questions[6].id }
])
