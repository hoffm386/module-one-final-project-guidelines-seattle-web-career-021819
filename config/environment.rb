require 'bundler'
Bundler.require

require 'yaml'

DBNAME = "nps"

Dir[File.join(File.dirname(__FILE__), "../app/models", "*.rb")].each {|f| require f}
Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

# DBRegistry[ENV["ACTIVE_RECORD_ENV"]].connect!
DB = ActiveRecord::Base.establish_connection(
    adapter: 'sqlite3',
    database: 'db/dev.sqlite'
)

require_all 'app'
require_all 'lib'

if ENV["ACTIVE_RECORD_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end