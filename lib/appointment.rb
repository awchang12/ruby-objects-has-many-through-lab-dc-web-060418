class Appointment
    attr_accessor :patient, :doctor, :date

    @@all = []

    def initialize(date, doctor, patient)
        self.date = date
        self.doctor = doctor
        self.patient = patient
        @@all << self
    end

      def self.all
        @@all
    end

end