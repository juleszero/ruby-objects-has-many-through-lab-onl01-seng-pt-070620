require 'pry'
class Patient
  attr_accessor :doctor, :appointment
  attr_reader :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, doctor)
    #binding.pry
    Appointment.new(date, self, doctor)  
  end
  
end