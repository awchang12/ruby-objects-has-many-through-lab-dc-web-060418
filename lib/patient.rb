
class Patient
    attr_accessor :name



    def initialize(name)
        @name = name
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end



    def new_appointment(date, doctor)
        Appointment.new(date, doctor, self)
    end


    def doctors
        appointments.collect {|appointment| appointment.date}
    end



end