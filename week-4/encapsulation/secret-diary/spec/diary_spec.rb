require_relative "../lib/diary.rb"

RSpec.describe Diary do
  describe "#add_entry" do
    let(:entry_time) { Time.now }
    subject(:diary) { described_class.new }
    let(:entry) { entry = double(:entry, entry_time: entry_time, text: "Dear Diary.") }

    it 'adds an entry with a date, title and some text' do
      expect(diary.add_entry(entry)).to include entry
    end
  end
end