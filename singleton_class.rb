require 'singleton'


class Config
  include Singleton
  
  attr_accessor :version, :state

  def store(first, second) 
  	@version = first
  	@state = second
  	
  end  

  def print
  	puts version, state
  end
end



c = Config.instance
puts c.inspect

c.store(1, 3)
c.store(3, 4)
c.print