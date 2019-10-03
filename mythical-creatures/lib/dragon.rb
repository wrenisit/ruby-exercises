class Dragon
  attr_reader :name, :color, :rider
  def initialize (name, color, rider)
    @name = name
    @color = color
    @rider = rider
    @hungry = true
    @hunger_level = 3
  end

  def dragons_eat_a_lot
  end

  def eat
    @hunger_level -= 1
    if @hunger_level <= 0
      @hungry = false
    end
  end

  def hungry?
    @hungry
  end
end
