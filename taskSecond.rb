class TaskSecond

def some_method(text)
words = []
words = text.downcase.chomp.gsub(/[.,\/#!$%\^&\*;:{}=\-_~()?]/,"").split(" ")

wo_re = {}
i = 0
while i < words.size do
  unless wo_re.key?(words[i])
    wo_re[words[i]] = 1
  else
    wo_re[words[i]] += 1
  end
  i += 1
end

if wo_re.size == words.size || words.size - wo_re.invert.size < 3
  puts "Текст содержит меньше трёх уникальных слов"
else
  i = words.size - 1
  ii = 3
  while ii > 0 do
    if wo_re.invert.key?(i)
      print wo_re.invert[i] + " "
      ii -= 1
    end
    i -= 1
  end
end
end
end

test1 = TaskSecond.new
test1.some_method(gets.chomp.to_s)

# text = "English texts for beginners to practice reading and comprehension online
# and for free. Practicing your comprehension of written English will both improve
# your vocabulary and understanding of grammar and word order. The texts below are
# designed to help you develop while giving you an instant evaluation of your progress.
#
# Prepared by experienced English teachers, the texts, articles and conversations
# are brief and appropriate to your level of proficiency. Take the multiple-choice
# quiz following each text, and you'll get the results immediately. You will feel
# both challenged and accomplished! You can even download (as PDF) and print the
# texts and exercises. It's enjoyable, fun and free. Good luck!"
# .downcase.chomp.gsub(/[.,\/#!$%\^&\*;:{}=\-_~()?]/,"")