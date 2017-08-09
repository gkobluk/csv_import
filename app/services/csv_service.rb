class CsvService

  CSV_FILE='./people.csv'


  def self.import_people
    people = SmarterCSV.process(CSV_FILE)
    begin
      if people.any?
        people.each do |person|
          p = Person.create(name: person[:name], email_address: person[:email_address], telephone_number: person[:telephone_number],
            website: person[:website]) #unless person[:name].nil? or person[:email_address].nil?
          if p.errors.any?
            puts p.errors.full_messages.join(",")
          end
        end
      end
    rescue Exception => e
      puts e.message
    end
    puts "*"*90
    puts "Results"
    puts "*"*90
    puts "Records in file: %d" % people.count
    puts "Records in database: %d" % Person.count
  end
end