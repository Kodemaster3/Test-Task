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
  words = text.chomp.gsub(/[.,@|\[\]\/#!$%^\+&\*;:{}=\-_~()?\da-z]/,"").downcase.split(" ")
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
    puts "The text contains less than three unique words"
    return words = nil
  else
    wor_e = wo_re.sort_by{ |key, value| value}
    bufer_1 = wor_e[-1][0] + ", " + wor_e[-2][0] + ", " + wor_e[-3][0]
    print bufer_1
  end
end
