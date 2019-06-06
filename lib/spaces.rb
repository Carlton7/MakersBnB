require 'data_mapper'
require 'dm-postgres-adapter'

class Space
  include DataMapper::Resource

  property :id, Serial
  property :name, String, required: true, unique: true
  property :description, String, required: true
  property :price, String, required: true
  property :available_from, String, required: true
  property :available_to, String, required: true

# def self.available(booked_from, available_from, available_to)
#   @available_from = :available_from
#   @available_to = :available_to
#   @booked_from = booked_from

#   if @booked_from > @available_from  && @booked_from > @available_to
#     true
#   else
#     false
#   end
# end

end



