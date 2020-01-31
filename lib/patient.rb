class Patient
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name  = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor,date)
        Appointment.new(date,self,doctor)
    end

    def appointments
        Appointment.all.select{|file| file.patient == self}
    end

    def doctors
        appointments.map{|e| e.doctor}
    end

end