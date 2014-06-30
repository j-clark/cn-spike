require 'spec_helper'

feature 'User management' do
  given(:name) { 'Clara Oswald' }

  scenario 'Logging in with Facebook' do
    create_facebook_account(name)

    visit '/'
    click_on 'Sign in with Facebook'

    expect(page.body).to have_content "Welcome, #{name}"
  end

  scenario 'Signing up without Faceboook' do
    visit '/'

    click_on 'Sign up without Facebook'

    fill_in 'Name', with: name
    fill_in 'Email', with: 'jclark@pivotallabs.com'
    fill_in 'Password', with: 'supersecret'

    click_on 'Sign up'

  end

  scenario 'Logging in without Facebook' do
    user = User.create(
      name: name,
      email: 'jclark@email.com',
      password: 'pass',
      password_confirmation: 'pass'
    )

    visit '/'

    click_on 'Sign in without Facebook'

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_on 'Sign in'

    expect(page.body).to have_content "Welcome, #{name}"
  end
end
