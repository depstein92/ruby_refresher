#simple class hierarchy ruby

class Dog

  @@num_of_dogs = 0 #class variable

  def self.num_of_dogs
   @@num_of_dogs
  end

  def speak
    puts("Woof Woof I am" + @name, 'and I am 1 of', num_of_dogs.to_s)
  end

  def initialize( aName ) #intitialize in ruby is class constructor
    @name = aName     # any property declared here also belongs to instance
    @@num_of_dogs += 1
  end

  def Dog.showInfo # class method
   puts "Number of dogs #{@@num_of_dogs}."
  end

end


class DogChild < Dog

  def roboHowl
    puts @howl
  end

  def initialize(aName, aHowl)
    super(aName) # inherit aName from Parent/Dog class
    @howl = aHowl
  end

end


myDog = Dog.new 'Fido'
myDog = Dog.new('Fido')
puppy = DogChild.new "Junius", "HOOOWWWL"
Dog.showInfo

#############################################
#cannot create objects from myModule
#cannot create calsses inside module
#modules are used for Modularity
#to make funcitons private
#and for mixins
#############################################

module MyModule

  GOOD_MOOD = "Happy" #declare constants in ruby
  BAD_MOOD = "Grumpy"

  def greet
   puts "Are you in a #{GOOD_MOOD} mood ?"
  end

  def MyModule.greet
   puts "Are you in a #{ BAD_MOOD } mood ?"
  end

end

include MyModule

puts MyModule::GOOD_MOOD #get value of constant in module
puts MyModule.greet
puts greet # if no include error thrown
