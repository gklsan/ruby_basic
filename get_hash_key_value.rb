hsh = { 1 => 1, 2 => 2, 3 => 3, 4 => 4 }

## select the key is odd?
hsh.keys.select{ |key| key.odd? } # => [1, 3]

#or

hsh.select{ |key| key.odd? }.keys

#or

hsh.each_key.select{|i| i.odd?} # => [1, 3]

#or 

hsh.each_key.select(&:odd?)  


## select the value is odd?

hsh.values.select{ |value| value.odd? } # => [1, 3]

#or

hsh.select{ |value| value.odd? }.values

#or

hsh.each_value.select{|i| i.odd?} # => [1, 3]

#or 

hsh.each_value.select(&:odd?)  
