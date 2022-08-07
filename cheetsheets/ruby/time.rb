today = Time.new                            #=> displays current time
p time_birthday = Time.new(1994, 8, 3, 12, 15)#=>2020-08-03 12:15:00 +0500

time_birthday.year                          #=> 1994
time_birthday.day                           #=> 03
time_birthday.month                         #=> 08
time_birthday.sec                           #=> 15
time_birthday.yday                          #=> 215 (displays which day of the year)
time_birthday.wday                          #=> 3 (day of week sanday =0, wed =3)  
time_birthday.ctime                         #=>"Wed Aug  3 12:15:00 1994"

time_birthday.monday?                       #=> false
time_birthday + (60*60*25)                  #=> 1994-08-04 13:15:00 +0500 (seconds*hours* days)
time_birthday.strftime("%a %b %Y")          #=>"Wed Aug 1994"


# %a - The abbreviated weekday name (“Sun”)
# %A - The full weekday name (“Sunday”)
# %b - The abbreviated month name (“Jan”)
# %B - The full month name (“January”)
# %H - Hour of the day, 24-hour clock (00..23)
# %I - Hour of the day, 12-hour clock (01..12)
# %m - Month of the year (01..12)
# %p - Meridian indicator (“AM” or “PM”)
# %w - Day of the week (Sunday is 0, 0..6)
# %x - Preferred representation for the date alone, no time
# %X - Preferred representation for the time alone, no date
# %Y - four digit year
