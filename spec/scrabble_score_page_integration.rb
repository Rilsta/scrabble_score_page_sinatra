require('capybara/rspec')
require('./app')
require('launchy')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the scrabble score path', {:type => :feature}) do
  it('processes user entry and returns score based on word letter values') do
    visit('/')
    fill_in('word_score', :with => 'apple')
    click_button('Submit')
    expect(page).to have_content('9')
  end
  it('returns back to index when button is pressed') do
    visit('/word_score?word_score=apple')
    click_link('Back')
    expect(page).to have_content('Submit a word to get your score!')
  end
end
