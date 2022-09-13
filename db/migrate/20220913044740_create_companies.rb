class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :slug
      t.boolean :active
      t.references :region, null: false, foreign_key: true

      t.timestamps
    end
  end
end
