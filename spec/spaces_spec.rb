require_relative '../lib/spaces'
describe 'Spaces' do
  it 'can create a space' do
    space = Space.create(
      name: 'Lakeside Cabin',
      description: 'Romantic getaway in the magical forest',
      price: '£200',
      available_from: '04/07/2019',
      available_to: '19/07/2019'
      )

      expect(space.name).to eq('Lakeside Cabin')
      expect(space.description).to eq('Romantic getaway in the magical forest')
  end
end