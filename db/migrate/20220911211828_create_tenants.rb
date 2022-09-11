class CreateTenants < ActiveRecord::Migration[7.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :slug
      t.boolean :active
      t.references :app, null: false, foreign_key: true

      t.timestamps
    end
  end
end
