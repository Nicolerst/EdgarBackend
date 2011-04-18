class CreateAgences < ActiveRecord::Migration
  def self.up
    create_table :agences do |t|
      t.string :nom
      t.string :telephone
      t.string :email
      t.text :adresse
      t.integer :codepostal
      t.string :ville
      t.text :notes


      t.timestamps
    end
  end

  def self.down
    drop_table :agences
  end
end
