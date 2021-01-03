require "./methods.rb"

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
    some = encrypt(text, n)
  elsif choice == 2
    puts "decript"
    some = decrypt(text, n)
  else
    puts "Try again :)"
  end
elsif choice1 == 2
  text = gets.downcase.chomp.gsub(/[.,\/#!$%\^&\*;:{}=\-_~()?]/,"").split(" ")
  scan_text(text)
else
  puts "Try again :)"
end
