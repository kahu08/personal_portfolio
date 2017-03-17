class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :project_name
      t.text :project_description
      t.string :link
      t.integer :skill_id

      t.timestamps
    end
  end
end
