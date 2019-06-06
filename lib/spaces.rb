require 'data_mapper'
require 'dm-postgres-adapter'

class Space
  include DataMapper::Resource

has n, :bookings

  property :id, Serial
  property :name, String, required: true, unique: true
  property :description, String, required: true
  property :price, String, required: true
  property :available_from, String, required: true
  property :available_to, String, required: true

belongs_to :user

end



