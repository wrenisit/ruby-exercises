class Person
  attr_reader :name
  attr_accessor :stoned
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
  @stoned
  end
end

class Medusa
attr_reader :name
attr_accessor :statues

  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(victim)
    victim.stoned = true
    if @statues.count <= 2
        @statues << victim
    else released_victim = @statues.shift
      released_victim.stoned = false
      @statues << victim
    end
    @statues
  end

end
