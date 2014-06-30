require 'spec_helper'

feature 'Log in' do
  given(:name) { 'Clara Oswald' }

  background do
    OmniAuth.config.add_mock(:facebook, {
      uid: 'uid',
      info: { name: name }
    })
  end

  scenario 'Logging in with Facebook' do
    visit '/'

    click_on 'Sign in with Facebook'

    expect(page.body).to have_content "Welcome, #{name}"
  end
end
