class CreateStaffs < ActiveRecord::Migration
  def self.up
    create_table :staffs do |t|
      t.string :nom
      t.string :prenom
      t.date :anniversaire
      t.string :telephone
      t.string :email
      t.text :adresse
      t.integer :codepostal
      t.string :ville
      t.text :notes
      t.string :alias
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :staffs
  end
end
