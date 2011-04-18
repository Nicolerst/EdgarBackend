class PlateauSession < ActiveRecord::Base
  belongs_to :client
  belongs_to :staff
  belongs_to :circuit
  belongs_to :vehicule
end
