require 'data_mapper'
require 'dm-postgres-adapter'

class Booking
  include DataMapper::Resource

  property :id, Serial
  property :start, String, required: true
  property :end, String, required: true
  property :status, String, default: 'pending'

  # belongs_to :user


end
