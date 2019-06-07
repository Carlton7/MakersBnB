feature 'log in' do
  scenario 'wrong login details' do
    visit('/')
    click_button 'Sign up'
    fill_in 'name', with: 'Bob'
    fill_in 'email', with: 'bobbyjones@email.com'
    fill_in 'password', with: 'hello'
    click_button 'Submit'
    click_button 'Log in'
    fill_in 'email', with: 'bobbyjones@email.com'
    fill_in 'password', with: 'he'
    click_button 'Log in'
    expect(page).to have_content 'Incorrect Login Details'
  end
end
