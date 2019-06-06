require 'data_mapper'

def setup_test_db

  DataMapper.setup(:default, 'postgres://dyrsdwqtqglgpn:8e95b389326b8b3be42caba3599757387c01ae3932ecd2f4363428ba13989293@ec2-54-217-225-16.eu-west-1.compute.amazonaws.com:5432/d2cs65ngo20q49')

end

DataMapper.auto_migrate!
DataMapper.auto_upgrade!
DataMapper.finalize

