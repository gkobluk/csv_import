class CsvService

  CSV_FILE='./tmp/people.csv'


  def self.import_people
    people = SmarterCSV.process(CSV_FILE)
    if people.any?
      people.each do |person|
        Person.create(name: person[:name], email_address: person[:email_address], telephone_number: person[:telephone_number],
          website: person[:website]) unless person[:name].nil? or person[:email_address].nil?
      end
    end
  end
end