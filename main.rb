require_relative "test"
require_relative "result"

puts "Тест поможет определить ваш уровень коммуникабельности."
puts
puts "Для этого необходимо правдиво ответить на следующие вопросы."

test = Test.new
result = Result.new(test.exec)
puts 
puts "Результаты теста: "
puts 
puts result.exec
