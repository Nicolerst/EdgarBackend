class CreateClientsCodeSessionsJoinTable < ActiveRecord::Migration
  def self.up
    create_table :clients_code_sessions do |t|
      t.references :client
      t.references :code_session
      
      t.timestamps
    end
  end

  def self.down
    drop_table :clients_code_sessions
  end
end
