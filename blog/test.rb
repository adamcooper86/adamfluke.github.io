require 'date'
class Person
  attr_reader :name, :sex, :physical_characteristics, :birthday
  @@population = 0
  def initialize name, sex, birth, char
    @name = name
    @sex = sex
    @physical_characteristics = char
    @birthday = birth
    @@population += 1
  end

  def pop
  	@@population
  end

  def small_talk string
    puts "Hello, #{string}."
  end
end

Uncle_Vernon = Person.new("Vernon Dursley", :male, Date.new(1950,2,2), hair:"blond", weight: 250, mustache: true)
p Uncle_Vernon     
p Uncle_Vernon.pop

class Wizard < Person
	attr_accessor :wand, :house, :broom

	def cast spell
	  puts "#{spell}!!!"
	end
end

harry = Wizard.new("Harry Potter", :male, Date.new(1986,7,14), hair:"black", weight: 70, scar: true)
p harry
p harry.pop

harry.wand = "pheonix feather"
harry.house = "Griffindor"
harry.broom = "Nimbus 2000"

p harry