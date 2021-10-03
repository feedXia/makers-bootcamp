require_relative "../lib/security.rb"
require_relative "../lib/diary.rb"

RSpec.describe Security do
  let(:diary) { Diary.new }
  let(:entry) { entry = double(:entry, entry_time: entry_time, text: "Dear Diary.") }

  # describe "#lock" do
  #   context "initially SecretDiary is locked" do
  #     it "#add_entry raises an error" do
  #       expect { diary.add_entry(entry) }.to raise_error "Diary is locked!"
  #     end

  #     it "#get_entries raises an error" do
  #       expect { diary.add_entry(entry) }.to raise_error "Diary is locked!"
  #     end
  #   end

  #   context "when #lock is called" do
  #     it "#add_entry raises an error" do
  #       diary.unlock
  #       diary.lock
  #       expect { diary.add_entry(entry) }.to raise_error "Diary is locked!"
  #     end

  #     it "#get_entries raises an error" do
  #       diary.unlock
  #       diary.lock
  #       expect { diary.add_entry(entry) }.to raise_error "Diary is locked!"
  #     end
  #   end
  # end

  # describe "#unlock" do
  #   context "when run" do
  #     it "is able to use #add_entry " do
  #       diary.unlock
  #       expect(diary.add_entry(entry)).to include entry
  #     end

  #     it "is able to use #get_entries " do
  #       diary.unlock
  #       expect(diary.get_entries).to eq diary.entries
  #     end
  #   end
  # end
end
