require "./methods.rb"

puts "Make choice task 1 is encript and decript, 2 is scan text"
choice_first = gets.to_i
if choice_first == 1
  puts "Make choice: 1 - encript, 2 - decript"
  choice = gets.to_i
  puts "Write letters"
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
    encrypt(text, n)
  elsif choice == 2
    decrypt(text, n)
  else
    puts "Try again :)"
  end
elsif choice_first == 2
  print "Write text\n"
  text = gets.to_s
  scan_text(text)
else
  puts "Try again :)"
end
