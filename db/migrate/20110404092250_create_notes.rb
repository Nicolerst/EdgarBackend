class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.references :client
      t.references :staff
      t.integer :note
      t.string :type

      t.references :code_session
      t.references :plateau_session
      
      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end
