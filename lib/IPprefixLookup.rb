
require 'SQLite3'
require 'ipaddr'

class IPprefixLookup


    def self.lookup(address,database = "./prefix.db")



      db = SQLite3::Database.new database
      begin
      lookupAddress = IPAddr.new(address)
      rescue ArgumentError
        $stderr.puts "Invalid IP address"
        raise
      end

      begin
          db.execute( "select prefix from prefixes where  lastint > #{lookupAddress.to_i} and firstint < #{lookupAddress.to_i}" ) do |row|
        unless !row
          return row[0]
        else
          return ""
        end
      end

      rescue Exception => e
        $stderr.puts "Unable to query database #{e}"
        raise
      end
    end
end

