puts "Тест поможет определить ваш уровень коммуникабельности."
puts
puts "Для этого необходимо правдиво ответить на следующие вопросы."

current_path = File.dirname(__FILE__)
questions_path = current_path + "/data/questions.txt"
result_path = current_path + "/data/result.txt"
unless File.exist?(result_path) && File.exist?(questions_path)
  abort 'Один из файлов не найден!'
end

questions_file = File.new(questions_path, "r:UTF-8")
questions = questions_file.readlines
questions_file.close
 
result_file = File.new(result_path, "r:UTF-8")
result = result_file.readlines
result_file.close
score = 0 

for item in questions do # Выводим вопрос, предлагаем ответы, считаем ответы.
  puts
  puts item
  puts
  puts "1. Да"
  puts "2. Нет"
  puts "3. Иногда"
  puts
  choice = STDIN.gets.chomp
  while choice != "1" && choice != "2" && choice != "3" do # Проверяем, что выбран существующий ответ
    puts "Введите существующий вариант"
    puts
    puts "1. Да"
    puts "2. Нет"
    puts "3. Иногда"
    puts
    choice = STDIN.gets.chomp
  end
  if choice == "1"
    score += 2
  else
    score += 1
  end
end

puts 
puts "Результаты теста:"
puts 

if score <= 3 # Выводим результат теста
  puts result[0]
elsif score <= 8
  puts result[1]
elsif score <= 13
  puts result[2]
elsif score <= 18
  puts result[3]
elsif score <= 24
  puts result[4]
elsif score <= 29
  puts result[5]
else
  puts result[6]
end
