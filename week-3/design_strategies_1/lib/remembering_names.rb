class RememberingNames
  @@names = []

  def add_name(name)
    @@names << name
    return "Name added!"
  end

  def show_names
    return @@names
  end
end