require 'data_mapper'
require 'dm-postgres-adapter'

<<<<<<< HEAD
# require_relative 'models/user'
require_relative 'models/property'
=======
require_relative 'models/user'
# require_relative 'models/property'
>>>>>>> master
# require_relative 'models/booking'

DataMapper.setup(:default, ENV['DATABASE_URL'] ||
                 "postgres://localhost/arrrgbnb_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
# For issue 7
