require 'data_mapper'

if ENV['ENVIRONMENT'] == 'test'
    DataMapper.setup(:default, 'postgres://dyrsdwqtqglgpn:8e95b389326b8b3be42caba3599757387c01ae3932ecd2f4363428ba13989293@ec2-54-217-225-16.eu-west-1.compute.amazonaws.com:5432/d2cs65ngo20q49')
else
    DataMapper.setup(:default, 'postgres://dyprngjwxidrct:5d716c3a1121d4b3b9217a87cd27b4d943af3f67235a6e8985c71f2c0aae58e1@ec2-54-217-225-16.eu-west-1.compute.amazonaws.com:5432/d1grbm419vri2u')
end

DataMapper.auto_upgrade!
DataMapper.finalize
