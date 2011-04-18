class Client < ActiveRecord::Base
  has_many :notes
  
  has_many :code_sessions, :through => :clients_code_sessions
end
