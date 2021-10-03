require_relative "../lib/diary.rb"
require_relative "../lib/diary_lock.rb"

RSpec.describe Diary do
  let(:entry_time) { Time.now }
  let(:entry) { entry = double(:entry, entry_time: entry_time, text: "Dear Diary.") }
  subject(:diary) { described_class.new }

  # describe "#add_entry" do
  #   it "adds an entry with a date, title and some text" do
  #     expect(diary.add_entry(entry)).to include entry
  #   end
  # end
  # describe "#get_entries" do
  #   it "returns all diary entries" do
  #     expect(diary.get_entries).to eq diary.entries
  #   end
  # end

  describe "#lock" do
    context "initially SecretDiary is locked" do
      # let(:diary_lock) { double(:diary_lock, :diary_lock => true) }
      it "#add_entry raises an error" do
        expect { diary.add_entry(entry) }.to raise_error "Diary is locked!"
      end

      it "#get_entries raises an error" do
        expect { diary.add_entry(entry) }.to raise_error "Diary is locked!"
      end
    end

    context "when #lock is called" do
      it "#add_entry raises an error" do
        diary.unlock
        diary.lock
        expect { diary.add_entry(entry) }.to raise_error "Diary is locked!"
      end

      it "#get_entries raises an error" do
        diary.unlock
        diary.lock
        expect { diary.add_entry(entry) }.to raise_error "Diary is locked!"
      end
    end
  end

  describe "#unlock" do
    context "when run" do
      it "is able to use #add_entry " do
        diary.unlock
        expect(diary.add_entry(entry)).to include entry
      end

      it "is able to use #get_entries " do
        diary.unlock
        expect(diary.get_entries).to eq diary.entries
      end
    end
  end
end
