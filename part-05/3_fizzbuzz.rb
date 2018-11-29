def fizzbuzz(number)
  1.step(number) do |n|
    if n % 15 == 0
      puts "#{n} is FizzBuzz"
    elsif n % 5 == 0
      puts "#{n} is Buzz"
    elsif n % 3 == 0
      puts "#{n} is Fizz"
    end
  end
end

fizzbuzz(30)
