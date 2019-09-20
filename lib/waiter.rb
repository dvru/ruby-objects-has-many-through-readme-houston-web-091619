class Waiter

attr_accessor :name, :years 

@@all = []


  def initialize(name, years)
    @name = name 
    @year = years
    @@all << self 
    
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_meal(waiter, total, tip)
     Meal.new(waiter, self, total, tip)
  end
  
  def meals 
    Meal.all.select do |meal|
      meal.customer == self
    end 
  end 
  
  
  
end