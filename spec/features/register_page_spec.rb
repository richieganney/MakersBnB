require_relative '../web_helpers'
# As a user,
# So I can use makers bnb,
# I want to register for an account

feature 'register' do
  scenario 'allows a user to sign up to makers bnb' do
    visit('/')
    sign_up_as_test
    expect(page).to have_content("Welcome to MakersBnB, Test")
  end
end
