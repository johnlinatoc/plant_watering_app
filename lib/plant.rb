class Plant
  attr_accessor :name, :water_after

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
end
