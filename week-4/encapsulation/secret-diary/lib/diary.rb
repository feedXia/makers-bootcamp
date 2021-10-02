class Diary

  attr_reader :entries

  def initialize
    # @title = title
    # @text = text
    @entries = []
  end

  def add_entry(entry)
    @entries.push(entry)
  end
end