require_relative "../lib/diary.rb"
require_relative "../lib/security.rb"
require "date"

RSpec.describe Diary do
  let(:entry) { entry = double(:entry, date: Date.today, text: "Dear Diary.") }
  subject(:diary) { described_class.new() }

  describe "#lock" do
    context "initially SecretDiary is locked" do
      # let(:diary_lock) { double(:diary_lock, :diary_lock => true) }
      it "#add_entry raises an error" do
        expect { diary.add_entry(entry) }.to raise_error "Cannot add entry: diary is locked!"
      end

      it "#get_entries raises an error" do
        expect { diary.get_entries }.to raise_error "Cannot get entry: diary is locked!"
      end

      it "responds to unlock" do
        expect(diary).to respond_to(:unlock)
      end
    end

    context "when #lock is called" do
      it "#add_entry raises an error" do
        diary.unlock
        diary.lock
        expect { diary.add_entry(entry) }.to raise_error "Cannot add entry: diary is locked!"
      end

      it "#get_entries raises an error" do
        diary.unlock
        diary.lock
        expect { diary.get_entries }.to raise_error "Cannot get entry: diary is locked!"
      end
    end
  end

  describe "#unlock" do
    context "when unlocked" do
      it "is able to use #add_entry " do
        diary.unlock
        expect(diary.add_entry(entry)).to include entry
      end

      it "is able to use #get_entries " do
        diary.unlock
        expect(diary.get_entries).to eq diary.entries
      end

      it "responds to lock" do
        expect(diary).to respond_to(:lock)
      end
    end
  end
end
