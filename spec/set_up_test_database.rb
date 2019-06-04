require 'data_mapper'

def setup_test_db

  DataMapper.setup(:default, 'postgres://:@localhost/makersbnb_test')

end

DataMapper.auto_migrate!
DataMapper.auto_upgrade!
DataMapper.finalize
