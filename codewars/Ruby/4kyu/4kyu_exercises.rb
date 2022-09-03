# Human readable duration format
def format_duration(seconds)
  @seconds = seconds
  return 'now' if @seconds == 0

  @time = {year: 0, day: 0, hour: 0, minute: 0, second: 0}

  def setComponent(component, second)
    @time[component] = (@seconds / second).floor;
    @seconds = @seconds - @time[component] * second
  end

  def lastComponent?(time)
    case time
    when :year
      ', ' if  @time[:year] > 0
    when :day
       @time[:hour] > 0 && @time[:minute] == 0 && @time[:second] == 0   ? ' and ' : ', ' if  @time[:day] > 0
    when  :hour
       @time[:second] > 0 && @time[:minute] == 0 ? " and " : @time[:second] == 0 && @time[:minute] > 0 ? ' and ' : @time[:second] == 0 && @time[:minute] == 0?  '' : ", " if  @time[:hour] > 0 
    when  :minute
       @time[:second] > 0  ? ' and ' : '' if  @time[:minute] > 0
    else 
       ''
    end
  end

  def setTimestamp(period)
    @time[period] == 0 ? "" : @time[period] == 1 ? "#{@time[period]} #{period}" : "#{@time[period]} #{period}s" if @time[period] > 0 
  end

  while @seconds != 0 
    if @seconds >= 31536000
      setComponent(:year, 31536000)
    elsif @seconds >= 86400
      setComponent(:day, 86400)
    elsif @seconds >= 3600
      setComponent(:hour, 3600)
    elsif  @seconds >= 60
      setComponent(:minute, 60)
    else
      @time[:second] = @seconds
      @seconds = 0
    end
  end

  "#{setTimestamp(:year)}#{lastComponent?(:year)}#{setTimestamp(:day)}#{lastComponent?(:day)}#{setTimestamp(:hour)}#{lastComponent?(:hour)}#{setTimestamp(:minute)}#{lastComponent?(:minute)}#{setTimestamp(:second)}"
end


# Next bigger number with the same digits
def next_bigger(n)
  # n.digits.reverse.then do | *rest, pre, last |
  #   res = [pre, last].reverse 
  #       .unshift(*rest) 
  #       .join.to_i
  #   res if res > n
  # end

  res = 0
  head = n.digits.reverse[-1]
  while res < n
    res = [head, n.digits.reverse[head+1]].reverse 
          .unshift(*rest) 
          .join.to_i
  end
  res
end