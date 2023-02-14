# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    # attr_reader :name, :color 
    # attr_accessor :say
    def initialize(name, color = "silver")
        @name = name
        @color = color
        # @say = say
    end
    # def color(new_color)
    #     if (val=self[:color]).empty?
    #         "silver"
    #     else val
    #     end
    # end    

    def say(unicorn_say)
        p "*~* #{unicorn_say} *~*"
    end

end

p unicorn1 = Unicorn.new("Sparkles", "gold")
unicorn1.say("I'm a damn horse")

p unicorn2 = Unicorn.new("Slappy")



#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    def initialize(name, pet = "bat")
        @name = name
        @pet = pet
        @thirsty = true
    end
    def drink
        @thirsty = false
    end
end
p vampire1 = Vampire.new("Vlad", "turtle")
p vampire1.drink
p vampire1

p vampire2 = Vampire.new("Nosferatu")

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @meals = 0
    end 
    # def eat(meals)
    #     if meals >= 4 
    #         @is_hungry = false
    #     end
    # end
    def eat
        @meals = @meals + 1
        if @meals >= 4
            @is_hungry = false
        end
    end
end



dragon1 = Dragon.new("Balerion", "Aegon", "Blackdredd")
p dragon1
5.times{dragon1.eat}
p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.
class Hobbit
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = true if @name == "Frodo"
        @has_ring = false if @name != "Frodo" 
    end
    def celebrate_birthday
        @age = @age +1
        if @age >= 101
            @is_old = true
        elsif @age >= 33
            @is_adult = true
        end
    end
    

end

hobbit1 =Hobbit.new("Bilbo", "curious")
p hobbit1
33.times{hobbit1.celebrate_birthday}
p hobbit1
78.times{hobbit1.celebrate_birthday}
p hobbit1

hobbit2 =Hobbit.new("Frodo", "pensive")
p hobbit2
