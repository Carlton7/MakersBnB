def login_two
  visit('/')
  click_button 'Sign up'
  fill_in 'name', with: 'Lisa'
  fill_in 'email', with: 'lisa@email.com'
  fill_in 'password', with: 'lisa'
  click_button 'Submit'
  click_button 'Log in'
  fill_in 'email', with: 'lisa@email.com'
  fill_in 'password', with: 'lisa'
  click_button 'Log in'
  click_button 'Book'
end
