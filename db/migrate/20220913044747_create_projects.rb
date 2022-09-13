class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :status
      t.decimal :budget
      t.string :country
      t.integer :progress
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
