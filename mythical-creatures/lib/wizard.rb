class Wizard
attr_reader :name
attr_accessor :bearded, :incantation, :energy_level, :rested

  def initialize(name, bearded: true)
    @name = name
    @bearded = bearded
    @rested = true
    @energy_level = 3

  end

  def bearded?
    @bearded
  end

  def incantation(spell)
    "sudo #{spell}"
  end

  def rested?
    if @energy_level >= 1
      @rested = true
    else @energy_level = false
    end
  end
  @rested

  def cast
    @energy_level -= 1
    "MAGIC MISSILE!"
  end
  @energy_level

end
