require 'data_mapper'
require 'dm-postgres-adapter'

class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, String, required: true, unique: true
  property :description, String, required: true
  property :price, Integer, required: true
  property :available_from, Date, required: true
  property :available_to, Date, required: true

end



