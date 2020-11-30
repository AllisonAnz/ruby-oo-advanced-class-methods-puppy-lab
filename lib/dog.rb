# Add your code here
class Dog
    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.clear_all
        @@all.clear
    end

    def self.print_all #class method that puts out the name of each dog to the terminal
        puts @@all.map{ |dog| dog.name }
    end

    def save #adds this dog instance to the @@all array when called
        @@all << self
    end
end

snoopy = Dog.new("Snoopy")
pluto = Dog.new("Pluto")
fido = Dog.new("Fido")
maddy = Dog.new("Maddy")
p Dog.all
p Dog.clear_all
p Dog.print_all
p pluto.save