require'remembering_names'

describe "the remember_names method" do
  it "Give us a message that name has been added" do
    name = RememberingNames.new
    expect(name.add_name('Xia')).to eq "Name added!"
  end

  it "Shows us the names that have been added" do
    name = RememberingNames.new
    expect(name.show_names).to eq(["Xia"])
  end
end