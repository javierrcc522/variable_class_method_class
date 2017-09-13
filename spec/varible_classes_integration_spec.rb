require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('my favorite things', {:type => :feature}) do
  it ('processes the user entry and returns a list of items') do
    visit('/')
    fill_in('name', :with => 'kittens')
    fill_in('rank', :with => 2)
    click_button('Go!')
    # expect(page).to have_content('kittens')
  end
end
