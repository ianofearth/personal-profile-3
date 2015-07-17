class AddReferencesTable < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :body
      t.integer :user_id

      t.timestamps
    end
  end
end
