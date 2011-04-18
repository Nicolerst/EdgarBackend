class CreateCircuits < ActiveRecord::Migration
  def self.up
    create_table :circuits do |t|
      t.string :nom
      t.text :adresse
      t.integer :codepostal
      t.string :ville
      t.text :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :circuits
  end
end
