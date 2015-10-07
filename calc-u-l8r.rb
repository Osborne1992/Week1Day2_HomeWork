require 'date'

def add
  puts "Enter the first number: "
  first_number = gets.to_f
  puts "Enter the second number: "
  second_number = gets.to_f
  answer = first_number + second_number
  puts "The answer is... #{answer}"
  pause
end

def subtract
  puts "Enter the first number: "
  first_number = gets.to_f
  puts "Enter the second number: "
  second_number = gets.to_f
  answer = first_number - second_number
  puts "The answer is... #{answer}"
  pause
end

def divide
    puts "Enter the first number: "
    first_number = gets.to_f
    puts "Enter the second number: "
    second_number = gets.to_f
    answer = first_number / second_number.to_f
    puts "The answer is... #{answer}"
    pause
end

def multiply
    puts "Enter the first number: "
    first_number = gets.to_f
    puts "Enter the second number: "
    second_number = gets.to_f
    answer = first_number * second_number
    puts "The answer is... #{answer}"
    pause
end

def square_root
    puts "Enter a number: "
    number = gets.to_f
    answer = Math.sqrt(number)
    puts "The answer is... #{answer}"
    pause
end

def power
    puts "Enter the first number: "
    first_number = gets.to_f
    puts "Enter the second number: "
    second_number = gets.to_f
    answer = first_number ** second_number
    puts "The answer is... #{answer}"
    pause
end

def pause
  puts "Press enter to continue"
  gets
end

def get_input
end

def menu
  puts `clear`
  puts "*** Calc-U-L8R ***"
  puts "Please choose whether to keep it simple, or push the boundaries"
  print "(b)asic, (a)dvanced, (w)ords, a(g)e, (m)easurement, (v)olume, (s)leeps until Chrismtas or (q)uit: "
  gets.chomp.downcase
end

def basic_calc
  puts "Good choice - which simple operation do you want to perform"
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase

  case operation
  when "a" then add
  when "s" then subtract
  when "m" then multiply
  when "d" then divide
  else
    puts "I am sorry, John... I cannot do that."
    basic_calc
  end
end


def advanced_calc
  puts "Your funeral - Which advanced operation do you want to perform"
  print "(s)quare root, (p)ower: "
  operation = gets.chomp.downcase

  case operation
  when "s" then square_root
  when "p" then power
  else
    puts "I am sorry, John... I cannot do that."
    advanced_calc
  end
end

def word_calc
  puts "Welcome to the word smith, what shall we make"
  puts "Enter your first word"
  first_word = gets.chomp.to_s
  puts "Enter your second word"
  second_word = gets.chomp.to_s
  answer = first_word + " " + second_word
  puts "We have made... #{answer}"
  pause
end

def age_calc
  puts "OK. To calculate how old you are, we will need you to sign over your soul and pop in some information!"
  puts "Enter your Day of birth (1-31)"
  dob_day = gets.to_i
  puts "Enter your Month of birth (1-12)"
  dob_month = gets.to_i
  puts "Enter your Year of birth"
  dob_year = gets.to_i
  date = Date.today
  age = date.year - dob_year
  age = age - 1 if (dob_month > date.month or (dob_month >= date.month and dob_day > date.day))
  puts "You are #{age}"
  pause
end

def volume_calc
  puts "Alright. We will use meters as our measurement for these. Which shape volume do you want to calculate"
  print "(c)ube, (s)phere, c(y)linder, (r)ectangular prism, c(o)ne, c(a)psule: "
  operation = gets.chomp.downcase

  case operation
  when "s" then sphere
  when "c" then cube
  when "y" then cylinder
  when "r" then rectangular_prism
  when "o" then cone
  when "a" then capsule
  else
    puts "I am sorry, John... I cannot do that."
    volume_calc
  end
end

def sphere
  puts "To work out the volume of a sphere, we need some values!"
  puts "Enter the RADIUS(r) of the sphere"
  radius = gets.to_f
  volume = ((4.0 / 3.0) * (Math::PI) * (radius ** 3.0))
  puts "The volume of a sphere with a radius of #{radius} is... #{volume} cubic meters!"
  puts "The equation you use to calculate this, is: (4/3) pi r^3"
  pause
end

def cube
  puts "To work out the volume of a cube, we need some values!"
  puts "Enter the LENGTH(l) of the cube"
  length = gets.to_f
  volume = length ** 3.0
  puts "The volume of a cube with a side length of #{length} is... #{volume} cubic meters!"
  puts "The equation you use to calculate this, is: l^3"
  pause
end

def cylinder
  puts "To work out the volume of a cylinder, we need some values!"
  puts "Enter the RADIUS(r) of the cylinder"
  radius = gets.to_f
  puts "Enter the HEIGHT(h) of the cylinder"
  height = gets.to_f
  volume = ((Math::PI) * (radius ** 2.0) * height)
  puts "The volume of a cylinder with a radius of #{radius} and height of #{height} is... #{volume} cubic meters!"
  puts "The equation you use to calculate this, is: pi r^2 h"
  pause
end

def rectangular_prism
  puts "To work out the volume of a rectangular prism, we need some values!"
  puts "Enter the HEIGHT(h) of the prism"
  height = gets.to_f
  puts "Enter the LENGTH(l) of the prism"
  length = gets.to_f
  puts "Enter the WIDTH(w) of the prism"
  width = gets.to_f
  volume = length * width * height
  puts "The volume of a rectangular prism with a height of #{height}, length of #{length} and width of #{width} is... #{volume} cubic meters!"
  puts "The equation you use to calculate this, is: l w h"
  pause
end

def cone
  puts "To work out the volume of a cone, we need some values!"
  puts "Enter the RADIUS(r) of the cone"
  radius = gets.to_f
  puts "Enter the HEIGHT(h) of the cone"
  height = gets.to_f
  volume = ((1.0 / 3.0) * (Math::PI) * (radius ** 2) * height)
  puts "The volume of a cone with the radius of #{radius} and height of #{height} is... #{volume} cubic meters!"
  puts "The equation you use to calculate this, is: (1/3) pi r^2 h"
  pause
end

def capsule
  puts "To work out the volume of a capsule, we need some values!"
  puts "Enter the LENGTH(l) of the capsule"
  length = gets.to_f
  puts "Enter the RADIUS(r) of the capsule"
  radius = gets.to_f
  volume = ((Math::PI) * (radius ** 2) * ((4.0 / 3.0) * radius + length))
  sleep 3
  puts "This is tricky..."
  sleep 3
  puts "Hmmm..."
  sleep 3
  puts "Carry the #{rand(10)}... Ah!"
  sleep 1
  puts "The volume of a capsule with the length of #{length} and radius of #{radius} is... #{volume} cubic meters!"
  puts "The equation you use to calculate this, is: pi r^2 ((4/3) r + a)"
  pause
end

def sleeps_until_christmas_calc
  christmas = Date.new(2015, 12, 25).yday
  today = Date.today
  nights = christmas - today.yday
  puts "From today, #{today.strftime('%d %m %Y')}, there are #{nights} nights until Christmas morning! How exciting!"
  sleep 2
  puts "Santa Claus is coming to town! OH YEAH!"
  pause
end

def measurement_calc
  puts "Now, do select what type of measurements you want to convert"
  print "(d)istance/length, (w)eight/mass, (v)olume/capacity: "
  operation = gets.chomp.downcase

  case operation
  when "d" then distance_calc
  when "w" then weight_calc
  when "v" then volume_convert_calc
  else
    puts "I am sorry, John... I cannot do that."
    measurement_calc
  end
end

def distance_calc
  puts "Now what do you want to convert?"
  print "(m)iles to kilometers, (f)eet to meters, (i)nches to centimeters, (k)ilometers to miles, m(e)ters to feet, (c)entimeters to inches: "
  operation = gets.chomp.downcase

  case operation
  when "m" then miles_to_km
  when "f" then feet_to_m
  when "i" then inches_to_cm
  when "k" then km_to_miles
  when "e" then m_to_feet
  when "c" then cm_to_inches
  else
    puts "I am sorry, John... I cannot do that."
    distance_calc
  end
end

def weight_calc
  puts "Now what do you want to convert?"
  print "(o)unces to grammes, (p)ounds to kilograms, (g)rammes to ounces, (k)ilograms to pounds: "
  operation = gets.chomp.downcase

  case operation
  when "o" then ounces_to_g
  when "g" then g_to_ounces
  when "p" then pounds_to_kg
  when "k" then kg_to_pounds
  else
    puts "I am sorry, John... I cannot do that."
    weight_calc
  end
end

def volume_convert_calc
  puts "Now what do you want to convert?"
  print "cubic (i)nch to cubic centimeter, (g)allon to liter, cubic (c)entimeter to cubic inch, (l)iter to gallon: "
  operation = gets.chomp.downcase

  case operation
  when "i" then cubic_inch_to_cubic_cm
  when "g" then gallon_to_liter
  when "c" then cubic_cm_to_cubic_inch
  when "l" then liter_to_gallon
  else
    puts "I am sorry, John... I cannot do that."
    volume_convert_calc
  end
end

def cubic_inch_to_cubic_cm
  puts "Alright, we shall convert cubic inches to cubic centimeters"
  puts "Enter the number of CUBIC INCHES you wish to convert"
  cu_in = gets.to_f
  cu_cm = cu_in / 0.061024
  puts "#{cu_in} cubic inches converts to #{cu_cm} cubic centimeters!"
  pause
end

def gallon_to_liter
  puts "Alright, we shall convert gallons to liters"
  puts "Enter the number of GALLONS you wish to convert"
  gal = gets.to_f
  l = gal / 0.21997
  puts "#{gal} gallons converts to #{l} liters!"
  pause
end

def cubic_cm_to_cubic_inch
  puts "Alright, we shall convert cubic centimeters to cubic inches"
  puts "Enter the number of CUBIC CENTIMETERS you wish to convert"
  cu_cm = gets.to_f
  cu_in = cu_cm * 0.061024
  puts "#{cu_cm} cubic centimeters converts to #{cu_in} cubic inches!"
  pause
end

def liter_to_gallon
  puts "Alright, we shall convert liters to gallons"
  puts "Enter the number of LITERS you wish to convert"
  l = gets.to_f
  gal = l * 0.21997
  puts "#{l} liters converts to #{gal} gallons!"
  pause
end

def ounces_to_g
  puts "Alright, we shall convert ounces to grammes"
  puts "Enter the number of OUNCES you wish to convert"
  oz = gets.to_f
  g = oz / 0.035274
  puts "#{oz} ounces converts to #{g} grammes!"
  pause
end

def g_to_ounces
  puts "Alright, we shall convert grammes to ounces"
  puts "Enter the number of GRAMMES you wish to convert"
  g = gets.to_f
  oz = g * 0.035274
  puts "#{g} grammes converts to #{oz} ounces!"
  pause
end

def pounds_to_kg
  puts "Alright, we shall convert pounds to kilograms"
  puts "Enter the number of POUNDS you wish to convert"
  lb = gets.to_f
  kg = lb / 2.2046
  puts "#{lb} pounds converts to #{kg} kilograms!"
  pause
end

def kg_to_pounds
  puts "Alright, we shall convert kilograms to pounds"
  puts "Enter the number of KILOGRAMS you wish to convert"
  kg = gets.to_f
  lb = kg * 2.2046
  puts "#{kg} kilograms converts to #{lb} pounds!"
  pause
end

def miles_to_km
  puts "Alright, we shall convert miles to kilometers"
  puts "Enter the number of MILES you wish to convert"
  miles = gets.to_f
  km = miles / 0.62137
  puts "#{miles} miles converts to #{km} kilometers!"
  pause
end

def feet_to_m
  puts "Alright, we shall convert feet to meters"
  puts "Enter the number of FEET you wish to convert"
  feet = gets.to_f
  meters = feet / 3.2808
  puts "#{feet} feet converts to #{meters} meters!"
  pause
end

def inches_to_cm
  puts "Alright, we shall convert inches to centimeters"
  puts "Enter the number of INCHES you wish to convert"
  inches = gets.to_f
  cm = inches / 0.39370
  puts "#{inches} inches converts to #{cm} centimeters!"
  pause
end

def km_to_miles
  puts "Alright, we shall convert kilometers to miles"
  puts "Enter the number of KILOMETERS you wish to convert"
  km = gets.to_f
  miles = km * 0.62137
  puts "#{km} kilometers converts to #{miles} miles!"
  pause
end

def m_to_feet
  puts "Alright, we shall convert meters to feet"
  puts "Enter the number of METERS you wish to convert"
  meters = gets.to_f
  feet = meters * 3.2808
  puts "#{meters} meters converts to #{feet} feet!"
  pause
end

def cm_to_inches
  puts "Alright, we shall convert centimeters to inches"
  puts "Enter the number of CENTIMETERS you wish to convert"
  cm = gets.to_f
  inches = cm * 0.39370
  puts "#{cm} centimeters converts to #{inches} inches!"
  pause
end

# run the app...

response = menu

until response == 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  when 'w'
    word_calc
  when 'g'
    age_calc
  when 'm'
    measurement_calc
  when 'v'
    volume_calc
  when 's'
    sleeps_until_christmas_calc
  end

response = menu
end