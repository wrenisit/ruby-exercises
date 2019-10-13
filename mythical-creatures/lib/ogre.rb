class Ogre
  attr_reader :name, :home, :swings
  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
    @swings = 0
  end

  def encounter(creature)
    creature.encounter
    swing_at(creature)
  end

  def swing_at(creature)
    if creature.notices_ogre? == true
    @swings += 1
    else
      false
    end
  end

end

class Human
  attr_reader :name, :encounter_counter
  def initialize
    @name = 'Jane'
    @encounter_counter = 0
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

  def knocked_out?
    if ogre.swings == 2
      true
    else
      false
    end
  end

end
