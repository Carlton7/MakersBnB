require 'data_mapper'
require_relative '../lib/sign_up.rb'
require_relative '../lib/database_connection_setup.rb'

DataMapper.auto_migrate!
DataMapper.auto_upgrade!
