class CreatePlateauSessions < ActiveRecord::Migration
  def self.up
    create_table :plateau_sessions do |t|
      t.references :circuit
      t.references :client
      t.references :staff
      t.references :vehicule
      
      t.datetime :start_date
      

      t.timestamps
    end
  end

  def self.down
    drop_table :plateau_sessions
  end
end
