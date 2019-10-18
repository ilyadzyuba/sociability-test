require_relative "lib/test"
require_relative "lib/result"

count = 1

results_path = __dir__ + "/data/results.txt"
results_file = File.new(results_path, "r:UTF-8")
unless File.exist?(results_path)
  abort 'Файл с результатами теста не найден!'
end
results = results_file.readlines
results_file.close

questions_path = __dir__ + "/data/questions.txt"
questions_file = File.new(questions_path, "r:UTF-8")
unless File.exist?(questions_path)
  abort 'Файл с вопросами не найден!'
end
questions = questions_file.readlines
# Делаем hash из вопросов для вывода
q_hash = questions.each_with_object({}) do
  |k, h| h[count] = k
  count += 1
end
questions_file.close

puts "Тест поможет определить ваш уровень коммуникабельности."
puts "\nДля этого необходимо правдиво ответить на следующие вопросы.\n\n"

# Количество вопросов
num_q = q_hash.size

test = Test.new(q_hash)
while num_q > 0
  puts "\n#{test.query}"
  num_q -= 1
  test.answers
end

result = Result.new(test.score, results)
puts "\nРезультаты теста:\n\n"
puts "#{result.print}\n\n"
