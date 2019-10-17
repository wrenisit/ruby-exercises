class Lion
  attr_reader :name, :sound
  def initialize(info)
    @name = info[:name]
    @sound = info[:sound]
  end
end
