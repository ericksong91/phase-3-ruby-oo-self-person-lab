require 'pry'

class Person

    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(happy)
        if happy < 0
            @happiness = 0
        elsif happy > 10
            @happiness = 10
        else
            @happiness = happy
        end
    end

    def hygiene=(hyg)
        if hyg > 10
            @hygiene = 10
        elsif hyg < 0
            @hygiene = 0
        else 
            @hygiene = hyg
        end
    end

    def happy?
        if happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        @bank_account = bank_account + amount
        "all about the benjamins"
    end
    
    def take_bath
        self.hygiene=(hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(hygiene - 3)
        self.happiness=(happiness + 2)
        '♪ another one bites the dust ♫'
    end

    def call_friend(instance)
        self.happiness += 3
        instance.happiness += 3
        "Hi #{instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, convo)
       if convo == "politics"
        person.happiness -= 2
        self.happiness -= 2
        "blah blah partisan blah lobbyist"
       elsif convo == "weather"
        person.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
       else
        "blah blah blah blah blah"
       end
    end

end

