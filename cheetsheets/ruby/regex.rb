# https://rubular.com/

str = "I am going to be a software developer in 2022 in 2 years"

str.scan(/[de]/)   #=>["e", "e", "d", "e", "e"] # char
str.scan(/d./)     #=>["de"]                            # . = any char  
str.scan(/g...g/)  #=> [going]
str.scan(/\./)
str.scan(/\d/)     #=>["2", "0", "2", "2", "2"]         # \d =digit, as[0-9]
str.scan(/\d+/)    #=>["2022", "2"]                     # + = any occurance of 1 or more chars
str.scan(/\d+/) {|digit_length| digit_length.length}    #=>4,1
str.scan(/\D/)                                          # none digit
str.scan(/\s/)                                          # whitespace   
str.scan(/\S/)                                          # none whitespace 
str.scan(/^\w/)          #=>["I"]         # anchor(search at the begining)   or (/A\w/) 
str.scan(/ye...w?$/)   #=>["years"]     # (search at the end)    or(/ye...w?\z/)                 
p str.scan(/[^aeiouI\s\d\.]/).length #=> ^ = exclude 

str =~/m/          #=> 3 (index position)


=begin
^       beginning of a line or string
$       end of a line or string
.       any character except newline
\w      word character[0-9A-Za-z_]
\W      non-word character
\s      whitespace character[ \t\n\r\f]
\S      non-whitespace character
\d      digit, same as[0-9]
\D      non-digit
\A      beginning of a string
\Z      end of a string, or before newline at the end
\z      end of a string
\b      word boundary(outside[]only)
\B      non-word boundary
\b      backspace(0x08)(inside[]only)

* 0     or more previous regular expression
*?      0 or more previous regular expression(non greedy)
+ 1     or more previous regular expression
+? 1    or more previous regular expression(non greedy)
{m,n}   at least m but most n previous regular expression
{m,n}?  at least m but most n previous regular expression(non greedy)
?       0 or  1 previous regular expression
|       alternation
( )     grouping regular expressions
(?# )   comment
(?: )   grouping without backreferences
(?= )   zero-width positive look-ahead assertion
(?! )   zero-width negative look-ahead assertion


(?ix-ix)   turns on (or off) `i' and `x' options within regular expression. These modifiers are localized inside an enclosing group (if any).

(?ix-ix: )  turns on (or off) `i' and `x' options within this non-capturing group.

=end

                             

