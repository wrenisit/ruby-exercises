class Ogre
  attr_reader :name, :home
  def initialize(name, home = 'Swamp')
    @name = name
    @home = home
  end

  def encounter(creature)
    creature.encounter
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

end
