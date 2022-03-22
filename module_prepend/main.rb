# Напишите пример использования подключения модуля с помощью `prepend`.
# Пример должен быть рабочим и выполнять определённую задачу (цель)

module Quiz_topics
  def topics_of_quiz
    file_path = "./data/questions.txt"

    f = File.new(file_path, "r:UTF-8")
    lines = f.readlines
    lines.sample
  end
end

class Quiz
  prepend Quiz_topics

  def topics_of_quiz
    topics = ["животный мир", "история", "21 век"]
    topics.sample
  end
end

c = Quiz.new

puts c.topics_of_quiz

