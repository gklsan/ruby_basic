require 'net/http'

uri = URI("http://www.gklsan.in")
res = Net::HTTP.get_response(uri)

puts res.code       # => 200
puts res.message    # => OK
puts res.class.name # => Net::HTTPOK
puts res.body       # => full response text/content
puts res.to_hash    # => Get the header, cookies, content_type, etc...
