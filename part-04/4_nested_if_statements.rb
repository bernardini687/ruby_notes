# It's possible to nest if statements inside another if statement
# Here there's a case statement inside an if statement

def meal_plan(time_of_week, time_of_day)
  if time_of_week == "weekday"
    case time_of_day
    when "breakfast" then "Cerial"
    when "lunch" then "Sandwitch"
    when "dinner" then "Chicken Nuggets"
    end
  elsif time_of_week == "weekend"
    case time_of_day
    when "breakfast" then "French Toast"
    when "lunch" then "BBQ Chicken Pizza"
    when "dinner" then "Steak"
    end
  end
end

p meal_plan("weekday", "lunch")     # => "Sandwitch"
p meal_plan("weekday", "dinner")    # => "Chicken Nuggets"
p meal_plan("weekend", "breakfast") # => "French Toast"
p meal_plan("weekend", "dinner")    # => "Steak"
