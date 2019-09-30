require_relative "test"
require_relative "result"

puts "Тест поможет определить ваш уровень коммуникабельности."
puts "\nДля этого необходимо правдиво ответить на следующие вопросы."
puts

test = Test.new
result = Result.new(test.exec)
puts "\nРезультаты теста:"
puts
puts result.exec
