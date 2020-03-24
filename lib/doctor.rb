class Doctor

  attr_reader :name, :appointment, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, patient, date)
    Appointment.new(self, patient, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.doctor == self}
  
  end

  def patients
    appointments.map do |appointment|
      appointment.patients
    end
  end

end