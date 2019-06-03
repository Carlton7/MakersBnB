feature 'sign_up' do

  scenario 'user can sign up' do
    visit('/')
    click_button 'Sign up'
    fill_in 'name', with: 'Bob Jones'
    fill_in 'email', with: 'bobbyjones@email.com'
    fill_in 'password', with: 'bobbybob'
    click_button 'Submit'

    expect(page).to have_button 'Log in'

  end

end
