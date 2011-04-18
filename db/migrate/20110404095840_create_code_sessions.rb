class CreateCodeSessions < ActiveRecord::Migration
  def self.up
    create_table :code_sessions do |t|
      t.references :agence
      t.datetime :start_date

      t.timestamps
    end
  end

  def self.down
    drop_table :code_sessions
  end
end
