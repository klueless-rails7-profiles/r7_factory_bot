class CreateApps < ActiveRecord::Migration[7.0]
  def change
    create_table :apps do |t|
      t.string :title
      t.string :description
      t.json :settings

      t.timestamps
    end
  end
end
