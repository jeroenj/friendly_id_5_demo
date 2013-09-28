class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :slug

      t.timestamps
    end

    add_index :people, :slug, unique: true
  end
end