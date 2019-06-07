def login
  visit('/')
  click_button 'Sign up'
  fill_in 'name', with: 'Yemi'
  fill_in 'email', with: 'yemiadebayo60@gmail.com'
  fill_in 'password', with: 'hello'
  click_button 'Submit'
  click_button 'Log in'
  fill_in 'email', with: 'yemiadebayo60@gmail.com'
  fill_in 'password', with: 'hello'
  click_button 'Log in'
end
