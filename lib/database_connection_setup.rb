require 'data_mapper'

if ENV['ENVIRONMENT'] == 'test'
    DataMapper.setup(:default, 'postgres://:@localhost/makersbnb_test')
else
    DataMapper.setup(:default, 'postgres://:@localhost/makersbnb')
end

DataMapper.auto_upgrade!
DataMapper.finalize