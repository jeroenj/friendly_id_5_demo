class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :person_id
      t.string :slug

      t.timestamps
    end
    
    add_index :accounts, :slug, unique: true
  end
end
