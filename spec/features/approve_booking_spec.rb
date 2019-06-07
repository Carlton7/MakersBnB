require_relative 'createspace_helper'
require_relative 'usertwo_helper'

feature 'booking' do
  scenario 'user can create an account, user can log in, user can create a listing
  and user can approve a booking' do
    createspace
    login_two
    click_button 'Book'
    fill_in 'booking_date', with: '04/07/2019'
    click_button 'Request booking'
    visit('/')
    click_button 'Log in'
    fill_in 'email', with: 'yemiadebayo60@gmail.com'
    fill_in 'password', with: 'hello'
    click_button 'Log in'
    click_button 'Profile'
    click_button 'approve'
    expect(page).to have_content 'Lakeside Cabin Approved'
  end
end
