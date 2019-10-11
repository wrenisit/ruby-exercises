class Werewolf
  attr_reader :name, :location

  def initialize(name, location = "Bork")
    @name = name
    @location = location
    @human = true
    @hungry = false
    @eat = false
  end

  def human?
    @human
  end

  def change!
    if @human == true
    @human = false
    else @human = true
    end

  end
  @human

  def wolf?
    @human == false
  end

  def hungry
    if @human == false && @eat == false
    @hungry = true
    end
    @hungry
  end

  def consume_a_victim(victim)
    if @human == false
      victim.expire
      @hungry = false
      @eat = true
    end
    @hungry
  end

end
