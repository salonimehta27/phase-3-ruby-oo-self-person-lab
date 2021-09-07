# your code goes here
class Person

def initialize(name)
    @name=name
    @bank_account=25
    @happiness=8
    @hygiene=8
end
attr_reader:name, :happiness, :hygiene
attr_accessor:bank_account
attr_accessor:hygiene
# attr_accessor:happiness
def happiness=(value)
@happiness= if value>10
             10
            elsif value<0
             0
            else
             value
            end
end

def hygiene=(value)
    @hygiene= if value>10
        10
       elsif value<0
        0
       else
        value
       end
    end
def happy?
    if happiness>7
        true
    else
        false
    end
end
def clean?
    hygiene>7?true:false
end

def get_paid amount
    self.bank_account+=amount
    "all about the benjamins"
end
def take_bath
    self.hygiene+=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
end
def work_out
    self.happiness+=2
    self.hygiene-=3
    "♪ another one bites the dust ♫"
end
def call_friend friend 
    friend.happiness+=3
    self.happiness+=3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
end
def start_conversation (friend,topic)
    if topic=="politics"
        friend.happiness-=2
        self.happiness-=2
        "blah blah partisan blah lobbyist"
    elsif topic=="weather"
        friend.happiness+=1
        self.happiness+=1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end 
end
end