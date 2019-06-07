require_relative 'userone_helper'

def createspace
  login
  click_button 'Host a space'
  fill_in 'name', with: 'Lakeside Cabin'
  fill_in 'description', with: 'Romantic getaway in the magical forest'
  fill_in 'price', with: '200'
  fill_in 'available_from', with: '04/07/2019'
  fill_in 'available_to', with: '31/07/2019'
  click_button 'List my space'
end
