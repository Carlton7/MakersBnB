# require_relative 'createspace_helper'
# require_relative 'usertwo_helper'

# feature 'booking' do
#   scenario 'host can reject booking request' do
#     createspace
#     login_two
#     click_button 'Book'
#     fill_in 'booking_date', with: '07/07/2019'
#     click_button 'Request booking'
#     visit('/')
#     click_button 'Log in'
#     fill_in 'email', with: 'yemiadebayo60@gmail.com'
#     fill_in 'password', with: 'hello'
#     click_button 'Log in'
#     click_button 'Profile'
#     click_button 'reject'
#     expect(page).not_to have_content 'Lake Cabin'
#   end
# end