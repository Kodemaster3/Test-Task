class TaskFirst

  def encrypt(text, n)
    if text == nil || text == ""
      abort "#{text}"
    end
    if n < 0 || n == 0
      abort "#{text}"
    end
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
    if encrypted_text == nil || encrypted_text == ""
      abort "#{encrypted_text}"
    end
    if n < 0 || n == 0
      abort "#{encrypted_text}"
    end
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
end

puts "Сделайте выбор: 1 - шифрование, 2 - дешифрование"
test = TaskFirst.new
choice = gets.to_i
if choice == 1
  puts "Выбор шифрование.\nВведите сначало слово \> нажмите Enter, число \> нажмите Enter"
  test.encrypt(gets.chomp.to_s, gets.to_i)
elsif choice == 2
  puts "Выбор дешифрование.\nВведите сначало слово \> нажмите Enter, число \> нажмите Enter"
  test.decrypt(gets.chomp.to_s, gets.to_i)
else
  puts "Try again :)"
end
