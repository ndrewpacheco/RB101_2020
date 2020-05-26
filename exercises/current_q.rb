
MINUTES_IN_A_DAY = 1440
MINUTES_IN_AN_HOUR = 60

def time_of_day(num)

  num += MINUTES_IN_A_DAY if num < 0
  num %= MINUTES_IN_A_DAY if num > MINUTES_IN_A_DAY || num * -1 > MINUTES_IN_A_DAY

  hrs = num / MINUTES_IN_AN_HOUR
  mins =  num - ( hrs * MINUTES_IN_AN_HOUR )

  "#{format("%.2d", hrs)}:#{format("%.2d", mins)}"

end

def after_midnight(time)
   # "#{format("%.2d", hrs)}:#{format("%.2d", mins)}" #### "00:00"
  hours = time[0,2].to_i
  mins = time[3,2].to_i
  total_mins = ( hours * MINUTES_IN_AN_HOUR ) + mins


  total_mins % MINUTES_IN_A_DAY

end

def before_midnight(time)
  hours = time[0,2].to_i
  mins = time[3,2].to_i
  total_mins = ( hours * MINUTES_IN_AN_HOUR ) + mins

  total_mins %= MINUTES_IN_A_DAY
  return total_mins if total_mins == 0

  MINUTES_IN_A_DAY - total_mins
  #mins
end


# p time_of_day(0)== "00:00"
# p time_of_day(-3) == "23:57"
# p time_of_day(35) == "00:35"
# p time_of_day(-1437) == "00:03"
# p time_of_day(3000) == "02:00"
# p time_of_day(800) == "13:20"
# p time_of_day(-4231) == "01:29"



p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0