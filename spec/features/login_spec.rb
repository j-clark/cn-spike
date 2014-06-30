require 'spec_helper'

feature 'Log in' do
  given(:name) { 'Clara Oswald' }

  scenario 'Logging in with Facebook' do
    create_facebook_account(name)

    visit '/'
    click_on 'Sign in with Facebook'

    expect(page.body).to have_content "Welcome, #{name}"
  end
end
