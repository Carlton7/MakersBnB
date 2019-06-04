require_relative '../lib/users'
describe 'Users' do
  it 'can create a user' do
    user = User.create(
      name: 'Bob Jones', 
      email: 'bob@email.com', 
      password: 'Bobby'
      )

      expect(user.name).to eq('Bob Jones')
      expect(user.email).to eq('bob@email.com')
  end 
end 