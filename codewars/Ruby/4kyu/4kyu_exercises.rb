# frozen_string_literal: true

# Human readable duration format
def format_duration(seconds)
  @seconds = seconds
  return 'now' if @seconds.zero?

  @time = { year: 0, day: 0, hour: 0, minute: 0, second: 0 }

  def setComponent(component, second)
    @time[component] = (@seconds / second).floor
    @seconds -= @time[component] * second
  end

  def lastComponent?(time)
    case time
    when :year
      ', ' if (@time[:year]).positive?
    when :day
      if (@time[:day]).positive?
        (@time[:hour]).positive? && (@time[:minute]).zero? && (@time[:second]).zero? ? ' and ' : ', '
      end
    when  :hour
      if (@time[:hour]).positive?
        if (@time[:second]).positive? && (@time[:minute]).zero?
          ' and '
        elsif (@time[:second]).zero? && (@time[:minute]).positive?
          ' and '
        else
          (@time[:second]).zero? && (@time[:minute]).zero? ? '' : ', '
        end
      end
    when  :minute
      if (@time[:minute]).positive?
        (@time[:second]).positive? ? ' and ' : ''
      end
    else
      ''
    end
  end

  def setTimestamp(period)
    return unless (@time[period]).positive?

    if (@time[period]).zero?
      ''
    else
      @time[period] == 1 ? "#{@time[period]} #{period}" : "#{@time[period]} #{period}s"
    end
  end

  while @seconds != 0
    if @seconds >= 31_536_000
      setComponent(:year, 31_536_000)
    elsif @seconds >= 86_400
      setComponent(:day, 86_400)
    elsif @seconds >= 3600
      setComponent(:hour, 3600)
    elsif @seconds >= 60
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
    res = [head, n.digits.reverse[head + 1]].reverse
                                            .unshift(*rest)
                                            .join.to_i
  end
  res
end
