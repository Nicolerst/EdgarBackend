class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :nom
      t.string :prenom
      t.date :anniversaire
      t.string :telephone
      t.string :email
      t.text :adresse
      t.integer :codepostal
      t.string :ville
      t.text :notes_memo
      t.string :alias
      t.string :password

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
