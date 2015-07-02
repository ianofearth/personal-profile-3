class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :number, :integer
      t.column :skill_id, :integer
    end
  end
end
