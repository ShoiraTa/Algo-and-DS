def number(bus_stops)
  bus_stops.inject(0) do |total, (enter, exit), i|
    total+=(enter-exit)
  end
end

puts number([[10, 0], [3, 5], [5, 8]])


 