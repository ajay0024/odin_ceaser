def ceaser_cipher(string, number)
    ans = string.split("").map do |x|
      if x.ord >= 65 && x.ord <=91
        y=(65 + (x.ord-65+number)%26).chr
      elsif x.ord >= 97 && x.ord <=123
        y=(97 +(x.ord-97+number)%26).chr
      else
        y=x
      end
      y
    end
    ans.join("")
end
p ceaser_cipher("What a string!", 5)