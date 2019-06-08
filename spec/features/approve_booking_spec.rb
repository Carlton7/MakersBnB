require_relative 'createspace_helper'
require_relative 'userone_helper'
require_relative 'usertwo_helper'


feature 'booking' do
  scenario 'user can approve a booking on hosted space' do
    createspace
    login_two
    fill_in 'booking_date', with: '04/07/2019'
    click_button 'Request booking'
    visit('/')
    login
    click_button 'Profile'
    click_button 'approve'
    expect(page).to have_content 'Lakeside Cabin Approved'
  end
end
