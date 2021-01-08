ss = "SSS SSS 1 1 1 1 1 sss sss SSS sss DDD' DDD' ddd' ddd' FFF fff gg GG"
i = 0
sss = ""
while i < ss.size
  if ss[i].to_s == ss[i].match(/[ A-Z']/).to_s
    sss += ss[i]
  end
  i += 1
end
print sss.split(" "), ss.size, " ", sss.size
# puts ss[1].to_s.eql?(ss[1].match(/[S]/).to_s), ss[1].match(/[S]/)
# "SSS SSS 1 1 1 1 1 sss sss SSS sss DDD' DDD' ddd' ddd' FFF fff gg GG"
