class Hobbit
  attr_reader :name, :disposition, :adult, :old
  attr_accessor :age, :has_ring
  def initialize(name, disposition = "homebody")
    @name = name
    @disposition = disposition
    @age = 0
    @adult = false
    @old = false
    @has_ring = false
  end

  def celebrate_birthday
    @age += 1
  end
  @age

  def adult?
    if @age >= 33
      @adult = true
    end
    @adult
  end

  def old?
    if @age >= 101
      @old = true
    end
    @old
  end

  def has_ring?
    if @name == "Frodo"
      @has_ring = true
    end
    @has_ring
  end

  def is_short?
    true
  end
end
