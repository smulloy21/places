require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the places path', {:type => :feature}) do
  it('process user input and add new place') do
    visit('/')
    fill_in('place', :with => 'Washington')
    click_button("Add Place")
    expect(page).to have_content("Washington")
  end

  it('clears all places from list') do
    visit('/')
    fill_in('place', :with => 'China')
    click_button("Add Place")
    click_button("Clear Places")
    expect(page).to have_no_content('China')
  end
end
