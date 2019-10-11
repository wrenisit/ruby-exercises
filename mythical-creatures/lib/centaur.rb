class Centaur
  attr_reader :name, :breed, :rested, :sick
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @energy = 2
    @laying = false
    @rested = false
    @sick = false
  end

  def shoot
    cranky?
    if @cranky == false && @standing == true
      @energy -= 1
      "Twang!!!"
    else "NO!"
    end
  end

  def run
    cranky?
    if @cranky == false && @standing == true
      @energy -= 1
    "Clop clop clop clop!!!"
    else "NO!"
    end
  end

  def cranky?
    if @energy <= 0
      @cranky = true
    end
  end

  def standing?
    @standing
  end

  def sleep
    if @standing == false
      @cranky = false
      @energy = 2
    else "NO!"
    end
  end

  def lay_down
    @standing = false
    @laying = true
  end

  def laying?
    @laying
  end

  def stand_up
    @standing = true
    @laying = false
  end

  def drink_potion
    if @standing == true
      @rested = true
    else
      @sick = true
      "NO!"
    end
  end
end
