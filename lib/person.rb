# your code goes here
require "pry" 
class Person
  attr_reader :name, :happiness, :hygiene
  attr_writer 
  attr_accessor :bank_account
  
  def initialize(name)
    @name = name 
    @bank_account = 25
    @happiness = 8
    @hygiene = 8
  end 
  
  def happiness=(amt)
    if amt > 10 
      @happiness = 10 
    elsif amt < 0 
      @happiness = 0 
    else 
      @happiness = amt 
    end 
  end
  
  def hygiene=(amt)
    if amt > 10 
      @hygiene = 10 
    elsif amt < 0 
      @hygiene = 0 
    else 
      @hygiene = amt 
    end 
  end 
  
  def happy?
    @happiness > 7 ? true : false 
  end 
  def clean?
    @hygiene > 7 ? true : false 
  end 
  
  def get_paid(arg)
    @bank_account = @bank_account + arg 
    return "all about the benjamins"
  end 
  
  def take_bath
    x= @hygiene + 4
    self.hygiene=x
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end 
  
  def work_out 
    x=@hygiene - 3 
    self.hygiene = x 
    y = @happiness + 2 
    self.happiness = y
    return '♪ another one bites the dust ♫'
  end 
  
  def call_friend(arg)
    x=@happiness + 3 
    self.happiness=x 
    y=arg.happiness + 3 
    arg.happiness = y 
    convo = "Hi #{arg.name}! It's #{self.name}. How are you?"
    return convo
  end 
  
  def start_conversation(person,topic)
    if topic == "politics"
      x=@happiness - 2 
      self.happiness=x 
      y=person.happiness-2 
      person.happiness=y 
      return "blah blah partisan blah lobbyist"
    elsif topic == "weather"
      x=@happiness+1 
      self.happiness=x 
      y=person.happiness+1 
      person.happiness=y 
      return "blah blah sun blah rain"
    elsif topic == "other"
      return "blah blah blah blah blah"
    end 
  end 

    
end 