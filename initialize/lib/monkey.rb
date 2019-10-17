class Monkey
  attr_reader :name, :type, :favorite_food
  def initialize(data)
    @name = data.fetch(0)
    @type = data.fetch(1)
    @favorite_food = data.fetch(2)
  end
end
