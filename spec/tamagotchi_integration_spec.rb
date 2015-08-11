require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the tamagotchi path', {:type => :feature}) do
  it('creating a tamagotchi') do
    visit('/')
    fill_in('name', :with => "Gitty Hubby")
    click_button('Create my Tamagotchi!')
    expect(page).to have_content("Gitty Hubby")
  end
end
