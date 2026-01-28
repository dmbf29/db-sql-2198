require 'sqlite3'
DB = SQLite3::Database.new("patients_doctors.sqlite")

# Doctor model

class Doctor
  def initialize(attributes = {})
    @id = attributes[:id] || attributes['id']
    @first_name = attributes[:first_name] || attributes['first_name']
    @last_name = attributes[:last_name]|| attributes['last_name']
    @age = attributes[:age] || attributes['age']
    @specialty = attributes[:specialty] || attributes['specialty']
  end

  def self.all
    DB.results_as_hash = true
    p rows = DB.execute('SELECT * FROM doctors')
    rows.map do |row|
      Doctor.new(row)
    end
  end

  # celso.save
  def save
    # insert the values of the instance into the DB
    DB.execute('INSERT INTO doctors (first_name) VALUES (?)', @first_name)
  end

end


# @doctor_repository.all -> Doctor.all
# an array of doctor instances
p Doctor.all
