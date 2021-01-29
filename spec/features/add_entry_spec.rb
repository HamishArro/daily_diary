feature 'albe to add a new entry' do

  scenario 'user can add an entry' do
    visit('/')
    click_button('Add entry')
    fill_in(:title, with: 'First entry')
    fill_in(:body, with: 'Hi, this is my first entry')
    click_button('Submit')
    expect(page).to have_content('First entry')
  end

end
