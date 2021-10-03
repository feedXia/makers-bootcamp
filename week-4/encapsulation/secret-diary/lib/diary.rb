class Diary
  attr_reader :entries, :security

  def initialize(security_class = Security)
    @entries = []
    @security = security_class.new
  end

  def add_entry(entry)
    fail "Cannot add entry: diary is locked!" if locked?
    entries.push(entry)
    # Alternatively, to accept user input for diary entry
    # entry = gets.chomp
    # @entries << {date: Date.today, text: entry}
  end

  def get_entries
    fail "Cannot get entry: diary is locked!" if locked?
    puts "Here are your entries: "
    @entries
  end

  def lock
    security.lock
  end

  def unlock
    security.unlock
  end

  def locked?
    security.locked?
  end

  # def unlocked?
  #   !@security.locked?
  # end
end
