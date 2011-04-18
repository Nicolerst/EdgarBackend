class Note < ActiveRecord::Base
  belongs_to :client
  belongs_to :staff
  
  belongs_to :code_session
  belongs_to :plateau_session
end
