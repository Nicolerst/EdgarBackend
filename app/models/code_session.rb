class CodeSession < ActiveRecord::Base
  belongs_to :agence
  
  has_many :clients, :through => :clients_code_sessions
  
end
