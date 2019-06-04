feature 'can input information for listing a space' do
  scenario 'should have fields for user to complete' do
    visit('/spaces/new')
    fill_in 'name', with: 'Lakeside Cabin'
    fill_in 'description', with: 'Romantic getaway in the magical forest'
    fill_in 'price', with: '£200'
    fill_in 'available_from', with: '04/07/2019'
    fill_in 'available_to', with: '19/07/2019'
    click_button 'List my space'
    expect(page).to have_content('Lakeside Cabin Romantic getaway in the magical forest')
  end
end
