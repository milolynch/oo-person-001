class Person
    @@all = []

  attr_reader :name
  attr_writer :bank_account, :happiness, :hygiene

  def initialize(name)
    @name = name
    @balance = 25
    @happiness = 8
    @hygiene = 8
    @@all << self
  end

  def bank_account
    @balance
  end

  def happiness #getter == attr_reader
    @happiness.clamp(0,10)
  end

  def hygiene # special getter.clamp
    @hygiene.clamp(0,10)
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end

  def get_paid(salary)
    @balance = @balance+salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene = self.hygiene+4
    '♪ Rub-a-dub just relaxing in the tub ♫'
  end

  def work_out
    self.hygiene = self.hygiene-3
    self.happiness = self.happiness+2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness = self.happiness+3
    person.happiness = person.happiness+3
    convo = "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
      self.happiness = self.happiness-2
      person.happiness = person.happiness-2
      "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
      self.happiness = self.happiness+1
      person.happiness = person.happiness+1
      'blah blah sun blah rain'
    else
      "blah blah blah blah blah"
    end
  end
end
# your code goes here
