feature 'log in' do
  scenario 'wrong login details' do
    visit('/')
    click_button 'Log in'
    fill_in 'email', with: 'bobbyjones@email.com'
    fill_in 'password', with: 'bobby'
    click_button 'Log in'
    expect(page).to have_content 'Incorrect Login Details'
  end
  scenario 'user can log in' do
    visit('/')
    click_button 'Log in'
    fill_in 'email', with: 'Bobbybob@email.com'
    fill_in 'password', with: 'Bobby'
    click_button 'Log in'
    expect(page).to have_content 'Bob Jones'
  end
end