require 'pry'

# your code goes here


class Person

    attr_accessor :bank_account, :happiness
    attr_reader :name, :hygiene

    @@name = []

    def initialize(name)
        @name = name
        @happiness = 8 
        @hygiene = 8
        @bank_account = 25
        @@name << name
    end

    def happiness=(points)
        @happiness = points
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(points)
        @hygiene = points
        @hygiene = 10 if @hygiene > 10
        @hygiene = 0 if @hygiene < 0
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end 

    def get_paid(salary)
        @bank_account += salary
         "all about the benjamins"
    end 

    def take_bath
       self.hygiene += 4
        '♪ Rub-a-dub just relaxing in the tub ♫' 
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"

    end 

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end 

    def start_conversation(person, topic)
        people = [self, person]
        if topic == "politics"
          people.each { |p| p.happiness -= 2}
          o, t = ["partisan", "lobbyist"]
        elsif topic == "weather"
          people.each { |p| p.happiness += 1}
          o, t = ["sun", "rain"]
        end
        #if not politics or weather, the words ||= blah (or equals)
        o ||= "blah"
        t ||= "blah"
        convo = "blah blah #{o} blah #{t}"
        #same pattern for all expected strings.
      end

   
end

