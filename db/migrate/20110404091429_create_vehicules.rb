class CreateVehicules < ActiveRecord::Migration
  def self.up
    create_table :vehicules do |t|
      t.string :type
      t.string :modele
      t.string :marque
      t.date :date_achat
      t.boolean :disponible
      
      t.references :circuit
      
      
      t.timestamps
    end
  end

  def self.down
    drop_table :vehicules
  end
end
