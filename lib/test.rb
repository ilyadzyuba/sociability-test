class Test
  def initialize(questions)
    @questions = questions
    @score = 0 # учет ответов
  end

  def score
    @questions.each do |question| # Выводим вопрос, предлагаем ответы, считаем ответы.
      puts "\n#{question}"
      puts "1. Да"
      puts "2. Нет"
      puts "3. Иногда\n\n"
      choice = STDIN.gets.to_i
      while choice != 1 && choice != 2 && choice != 3 do # Проверяем, что выбран существующий ответ
        puts "\nВведите существующий вариант"
        puts "1. Да"
        puts "2. Нет"
        puts "3. Иногда\n\n"
        choice = STDIN.gets.to_i
      end
      if choice == 1 # если ответ да - 2 балла
        @score += 2
      elsif choice == 3 # если ответ иногда - 1 балл
        @score += 1
      end # если ответ нет 0 баллов
    end
    @score
  end
end
