require('rspec')

class Fixnum
  define_method(:numbers_to_words) do
    input_number = self
    number = { 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen", 20 => "twenty", 30 => "thirty", 40 => "forty", 50 => "fifty", 60 => "sixty", 70 => "seventy", 80 => "eighty", 90 => "ninety"}
    word = ""
    if !number.include?(self)
      if input_number./(100000000000000).>(0)
        hundred_trillion_number = input_number./(100000000000000).floor()
        word.concat(number.fetch(hundred_trillion_number)).concat(" hundred ")
        input_number = input_number.%(100000000000000)
      end
      if input_number./(10000000000000).>=(2)
        ten_trillion_number = input_number./(10000000000000).floor().*(10)
        word.concat(number.fetch(ten_trillion_number)).concat(" ")
        input_number = input_number.%(10000000000000)
      end
      if input_number./(1000000000000).>(0)
        trillion_number = input_number./(1000000000000).floor()
        word.concat(number.fetch(trillion_number)).concat(" ")
        input_number = input_number.%(1000000000000)
      end
      if self.>(1000000000000)
        word.concat("trillion ")
      end


      if input_number./(100000000000).>(0)
        hundred_billion_number = input_number./(100000000000).floor()
        word.concat(number.fetch(hundred_billion_number)).concat(" hundred ")
        input_number = input_number.%(100000000000)
      end
      if input_number./(10000000000).>=(2)
        ten_billion_number = input_number./(10000000000).floor().*(10)
        word.concat(number.fetch(ten_billion_number)).concat(" ")
        input_number = input_number.%(10000000000)
      end
      if input_number./(1000000000).>(0)
        billon_number = input_number./(1000000000).floor()
        word.concat(number.fetch(billion_number)).concat(" ")
        input_number = input_number.%(1000000000)
      end
      if self.>(1000000000)
        word.concat("billion ")
      end

      
      if input_number./(100000000).>(0)
        hundred_million_number = input_number./(100000000).floor()
        word.concat(number.fetch(hundred_million_number)).concat(" hundred ")
        input_number = input_number.%(100000000)
      end
      if input_number./(10000000).>=(2)
        ten_million_number = input_number./(10000000).floor().*(10)
        word.concat(number.fetch(ten_million_number)).concat(" ")
        input_number = input_number.%(10000000)
      end
      if input_number./(1000000).>(0)
        million_number = input_number./(1000000).floor()
        word.concat(number.fetch(million_number)).concat(" ")
        input_number = input_number.%(1000000)
      end
      if self.>(1000000)
        word.concat("million ")
      end
      if input_number./(100000).>(0)
        hundred_thousand_number = input_number./(100000).floor()
        word.concat(number.fetch(hundred_thousand_number)).concat(" hundred ")
        input_number = input_number.%(100000)
      end
      if input_number./(10000).>=(2)
        ten_thousand_number = input_number./(10000).floor().*(10)
        word.concat(number.fetch(ten_thousand_number)).concat(" ")
        input_number = input_number.%(10000)
      end
      if input_number./(1000).>(0)
        thousand_number = input_number./(1000).floor()
        word.concat(number.fetch(thousand_number)).concat(" ")
        input_number = input_number.%(1000)
      end
      if self.>(1000)
        word.concat("thousand ")
      end
      if input_number./(100).>(0)
        hundred_number = input_number./(100).floor()
        word.concat(number.fetch(hundred_number)).concat(" hundred ")
        input_number=input_number.%(100)
      end
      if input_number./(10).>(0)
        ten_number = input_number./(10).floor().*(10)
        one_number = input_number.%10
        word.concat(number.fetch(ten_number)).concat(" ").concat(number.fetch(one_number))
      end
    else
    word.concat(number.fetch(input_number))
    end
  word
  end
end
