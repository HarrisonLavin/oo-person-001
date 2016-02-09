# your code goes here

class Person
  attr_reader :name, :hygiene
  attr_writer :happiness
  attr_accessor :bank_account

  def initialize(name)
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
    @name = name
  end

  def happiness
    if @happiness >= 10
      @happiness = 10
    elsif @happiness <= 0
      @happiness = 0
    end
    @happiness
  end

  def hygiene=(input)
    @hygiene = input
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    end
    @hygiene
  end


  def happy?
    @happiness > 7
  end

  def clean?
    @hygiene > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene=(self.hygiene + 4)
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene= (self.hygiene - 3)
    self.happiness= (self.happiness + 2)
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness = (self.happiness + 3)
    person.happiness = (person.happiness + 3)
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == "politics"
      self.happiness= self.happiness - 2
      person.happiness= person.happiness - 2
      "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      self.happiness= self.happiness + 1
      person.happiness = person.happiness + 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end