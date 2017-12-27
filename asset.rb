require 'active_record'
require 'mysql2'

ActiveRecord::Base.establish_connection(
  adapter: 'mysql2',
  host: '127.0.0.1',
  database: 'qcx_development',
  username: 'root',
  password: ''
)

class Asset < ActiveRecord::Base
end
