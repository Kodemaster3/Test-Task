puts "Make choice task 1 is encript and decript, 2 is scan text"
choice1 = gets.to_i
if choice1 == 1
  puts "Make choice: 1 - encript, 2 - decript"
  choice = gets.to_i
  puts "Write word"
  text = gets.chomp.to_s
  if text == nil || text == ""
    abort "#{text}"
  end
  puts "Number"
  n = gets.to_i
  if n < 0 || n == 0
    abort "#{text}"
  end
  if choice == 1
    puts "encript"
    encrypt(text, n)
  elsif choice == 2
    puts "decript"
    decrypt(text, n)
  else
    puts "Try again :)"
  end
elsif choice1 == 2
  text = gets.downcase.chomp.gsub(/[.,\/#!$%\^&\*;:{}=\-_~()?]/,"").split(" ")
  scan_text(text)
else
  puts "Try again :)"
end

def encrypt(text, n)
  print "\(\"#{text}\", #{n}\)"
  while n!=0 do
    encrypted_text = ""
    flag = true
    i = 1
    while flag do
      encrypted_text += text[i].downcase
      i+=2
      if text.size <= i
        flag = false
      end
    end
    flag = true
    i = 0
    while flag do
      encrypted_text += text[i].downcase
      i+=2
      if text.size <= i
        flag = false
      end
    end
    print " \-\> \"#{encrypted_text}\""
    text = encrypted_text
    n-= 1
  end
end
def decrypt(encrypted_text, n)
  print "\(\"#{encrypted_text}\", #{n}\)"
  while n!=0 do
    odd_i = (encrypted_text.size/2).round
    even_i = encrypted_text.size - odd_i
    odd = ""
    even = ""
    text = ""
    i = 0
    while i < odd_i do
      odd += encrypted_text[i].to_s.downcase
      i += 1
    end
    i = odd_i
    while i <= encrypted_text.size do
      even += encrypted_text[i].to_s.downcase
      i += 1
    end
    i = 0
    while i <= encrypted_text.size do
      text += even[i].to_s
      if i<odd_i
        text += odd[i].to_s
      end
      i += 1
    end
    print " \-\> \"#{text}\""
    encrypted_text = text
    n -= 1
  end
end
def scan_text(text)
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
if wo_re.size == words.size || words.size - wo_re.size < 3
  puts "Текст содержит меньше трёх уникальных слов"
else
wor_e = wo_re.sort_by{ |key, value| value}

print wor_e[-1][0] + ", " + wor_e[-2][0] + ", " + wor_e[-3][0]


end
end
