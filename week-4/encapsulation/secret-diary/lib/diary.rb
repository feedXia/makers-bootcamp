class Diary
  attr_reader :entries, :security

  def initialize(security_class = Security)
    @entries = []
    @security = security_class.new
  end

  def add_entry(entry)
    fail "Diary is locked!" if locked?
    entries.push(entry)
  end

  def get_entries
    fail "Diary is locked!" if locked?
    entries
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
