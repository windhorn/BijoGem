class Human
  attr_accessor :id, :name, :image

  def initialize(attributes)
    attributes.each {|key, value|
      self.send("#{key.to_s}=", value)
    }
  end
end
