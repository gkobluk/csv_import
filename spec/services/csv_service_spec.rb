describe CsvService do
  context ".import people" do
    it "imports successfully valid csv file" do
      CsvService.import_people
      expect(Person.count).to eq(7)
    end
  end
end