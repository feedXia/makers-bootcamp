class Diary
  attr_reader :entries, :locked

  def initialize
    @entries = []
    # @diary_lock = diary_lock
    @locked = true
  end

  def add_entry(entry)
    fail "Diary is locked!" if locked
    entries.push(entry)
  end

  def get_entries
    fail "Diary is locked!" if locked
    entries
  end

  def lock
    @locked = true
  end

  def unlock
    @locked = false
  end
end
