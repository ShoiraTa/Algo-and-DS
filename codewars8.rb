# billboard
def billboard(name, price=30)
  total=0
  name.split('').each{|letter| total+=price}
  total
end

def billboard(name, price = 30)
  sum = 0
  name.length.times{sum+=price}
  sum
end

def billboard(name, price = 30)
  name.split('').inject(0) {|total, n| total+price}
end

def billboard(name, price = 30)
  name.chars.map{price}.inject(:+)
end

# how_much_i_love_you
def how_much_i_love_you(nb_petals)
  words =['I love you', 'a little', 'a lot', 'passionately', 'madly', 'not at all']
  words[(nb_petals%6)-1]
end

# between
def between(a, b)
  (a..b).to_a
end

def between(a, b)
  final =[]
  while a<=b
    final<<a
    a+=1
    end
  final
end

# make_negative
def make_negative(num)
  num < 0  ? num : -(num)
end

# ghostbusters
def ghostbusters(building)
  building =~ /\s+/   ? building.gsub(/\s+/, '') : 'You just wanted my autograph didn\'t you?'
end