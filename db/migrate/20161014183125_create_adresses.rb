class CreateAdresses < ActiveRecord::Migration[5.0]
  def change
    create_table :adresses do |t|
      t.string :street_name
      t.references :city, foreign_key: true
      t.references :state, foreign_key: true
      t.references :zip_code, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
