class Pirate
attr_reader :name, :job
attr_accessor :cursed, :heinous_acts, :booty

  def initialize(name, job = "Scallywag")
    @name = name
    @job = job
    @cursed = false
    @heinous_acts = 0
    @booty = 0
  end

  def cursed?
    @cursed
  end

  def commit_heinous_act
    @heinous_acts = @heinous_acts += 1
    if @heinous_acts >= 3
      @cursed = true
    end
    @heinous_acts
  end

  def rob_ship
    @booty += 100
  end 


end
