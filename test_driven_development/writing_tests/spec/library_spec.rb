require_relative'../lib/library.rb' 

RSpec.describe Library do
  it 'can find a specific book' do
    # Arrange: all the preconditions required for your code to run 
    # - creating any objects and assigning any variables that you're going to need.
    library = Library.new
    # Act: execute the code which needs to be run in order for your assertion to be true.
    # Assert: your action has had an effect, or that it returned the expected value.
    expect(library.find_book('POODR')).to eq({:author=>"Sandi Metz", :subject=>"OOP", :title=>"POODR"} )
    expect(library.find_book('Learn Ruby The Hard Way')).to eq({:author=>"Zed Shaw", :subject=>"Ruby", :title=>"Learn Ruby The Hard Way"})
  end

  it 'can add a new book' do
    library = Library.new
    expect(library.add_book({title: 'Eloquent Ruby', author: 'Russ Olsen', subject:'Ruby'})).to eq(
      [
        {:author=>"Sandi Metz", :subject=>"OOP", :title=>"POODR"},
        {:author=>"Zed Shaw", :subject=>"Ruby", :title=>"Learn Ruby The Hard Way"},
        {:author=>"Marijn Haverbeke", :subject=>"JS", :title=>"Eloquent JavaScript"},
        {:author=>"Sandi Metz", :subject=>"Ruby", :title=>"The Well Grounded Rubyist"},
        {:author=>"Russ Olsen", :subject=>"Ruby", :title=>"Eloquent Ruby"}
      ]
    )
  end

  it 'can remove a book' do
    library = Library.new
    expect(library.remove_book('The Well Grounded Rubyist')).to eq(
      [
        {:author=>"Sandi Metz", :subject=>"OOP", :title=>"POODR"},
        {:author=>"Zed Shaw", :subject=>"Ruby", :title=>"Learn Ruby The Hard Way"},
        {:author=>"Marijn Haverbeke", :subject=>"JS", :title=>"Eloquent JavaScript"}
      ]
    )
  end

  it 'can list all the books on a specific subject' do
    library = Library.new
    expect(library.all_books_by_subject('Ruby')).to eq(
      [
        {:author=>"Zed Shaw", :subject=>"Ruby", :title=>"Learn Ruby The Hard Way"},
        {:author=>"Sandi Metz", :subject=>"Ruby", :title=>"The Well Grounded Rubyist"}
      ]
    )
  end
end
