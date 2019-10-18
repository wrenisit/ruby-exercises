class Ogre
  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end

  def encounter(creature)
    creature.encounter
    @encounter_counter += 1
    swing_at(creature)
  end

  def swing_at(creature)
    if creature.notices_ogre? == true
    creature.attack_counter
    @swings += 1
    else
      false
    end
  end

  def apologize(creature)
    creature.apology
  end
end

class Human
  attr_reader :name, :encounter_counter
  def initialize
    @name = 'Jane'
    @encounter_counter = 0
    @swings = 0
    @apology = false
  end

  def encounter
    @encounter_counter += 1
  end

  def notices_ogre?
    if @encounter_counter % 3 == 0
      true
    else
      false
    end
  end

  def attack_counter
    @apology = false
    @swings += 1
  end

  def apology
    @apology = true
  end

  def knocked_out?
    if @apology == true
      @knocked_out = false
    elsif @swings % 2 == 0
      @knocked_out = true
    else
      @knocked_out = false
    end
    @knocked_out
  end

end
