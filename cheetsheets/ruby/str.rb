# frozen_string_literal: true

# Class methods:

#   new, try_convert

# = Instance methods:

#   %, *, +, +@, -@, <<, <=>, ==, ===, =~, [], []=, ascii_only?, b, bytes,
#   bytesize, byteslice, capitalize, capitalize!, casecmp, casecmp?,
#   center, chars, chomp, chomp!, chop, chop!, chr, clear, codepoints,
#   concat, count, crypt, delete, delete!, delete_prefix, delete_prefix!,
#   delete_suffix, delete_suffix!, downcase, downcase!, dump, each_byte,
#   each_char, each_codepoint, each_grapheme_cluster, each_line, empty?,
#   encode, encode!, encoding, end_with?, eql?, force_encoding, freeze,
#   getbyte, grapheme_clusters, gsub, gsub!, hash, hex, include?, index,
#   initialize_copy, insert, inspect, intern, iseuc, isjis, issjis,
#   isutf8, kconv, length, lines, ljust, lstrip, lstrip!, match, match?,
#   next, next!, oct, ord, partition, prepend, replace, reverse, reverse!,
#   rindex, rjust, rpartition, rstrip, rstrip!, scan, scrub, scrub!,
#   setbyte, shellescape, shellsplit, size, slice, slice!, split, squeeze,
#   squeeze!, start_with?, strip, strip!, sub, sub!, succ, succ!, sum,
#   swapcase, swapcase!, to_c, to_d, to_f, to_i, to_r, to_s, to_str,
#   to_sym, toeuc, tojis, tolocale, tosjis, toutf16, toutf32, toutf8, tr,
#   tr!, tr_s, tr_s!, undump, unicode_normalize, unicode_normalize!,
#   unicode_normalized?, unpack, unpack1, upcase, upcase!, upto,
#   valid_encoding?

# strings //////////////////////////////////////////////////////////////////////
puts 'harry'.capitalize                      #=> "Harry"
puts 'harry'.downcase                        #=> "harry"
puts 'harry'.reverse                         #=> "yrrah"
puts 'harry'.include?('a')                     #=> true
puts 'harry'.empty?                            #=> false
puts 'harry'.length                            #=> 5
a = 'I'
b = 'you'
c = 'we'
'harry'.start_with?('a')                       #=> false
'harry'.start_with?('y')                       #=> true
'harry'.prepend('potter')                      #=> "potterharry"
'harry' << 'potter' #=> "harrypotter"
'harry'[0, str.length]                         #=> "harry" (start at index 0 to the end of str)
'harry'[-1]                                    #=>"y"
'harry'[1]                                     #=> "a"
'harry'.concat('potter')                       #=> "harrypotter"
'harry'.slice(1)                              #=> "a"
'harry'.slice(1, name.length)                 #=> "arry"
'harry'.slice(1..3)                           #=> a
'harry'[0] = 'pipe'                           #=>pipe
'harry'[1..3] = 'pipe'                        #=>pipe
'harry'.gsub(/[rR]/, 'M')                      #=>"haMMy" (replaces all substrings)
'harry'.sub('r', 'M')                          #=>"haMry"(replaces first  substrings)
'harry'.delete('h')                           #=>arry
'Shoira, went, home today'.split(',')         #=> ["Shoira", " went", " home today"]
['I', 'went', 'home today'].join(' JOIN ') #=>"I JOIN went JOIN home today"
'harry'.insert(0, 'hello ') #=> "hello harry"

# INPUT OUTPUT////////////////////////////////////////////////////////
print 'What is your name?'
name = gets.chomp
puts("your name is#{name}")
