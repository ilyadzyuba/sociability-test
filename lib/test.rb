class Test
  def initialize(q_hash)
    @q_hash = q_hash
    @score = 0 # подсчет ответов
    @choices = [] # ответы
    @count = 1
  end

  def query # Задаем вопрос
    @print_query = @q_hash.fetch(@count)
    @count += 1
    @print_query
  end

  def answers # Собираем ответы
    puts "1. Да"
    puts "2. Нет"
    puts "3. Иногда"
    choice = STDIN.gets.to_i
    while choice != 1 && choice != 2 && choice != 3 do # существующий ответ?
      puts "\nВведите существующий вариант"
      puts "1. Да"
      puts "2. Нет"
      puts "3. Иногда"
      choice = STDIN.gets.to_i
    end
    @choices << choice
  end

  def score # Пересчитываем ответы в баллы теста
    @choices.each do |answer|
      if answer == 1 # если ответ "да" - 2 балла
        @score += 2
      elsif answer == 3 # если ответ "иногда" - 1 балл
        @score += 1
      end # если ответ "нет" 0 баллов
    end
    @score
  end
end
