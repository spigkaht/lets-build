class CreateHouses < ActiveRecord::Migration[7.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :builder
      t.float :area_total
      t.float :area_house
      t.float :min_block_width
      t.float :width_house
      t.float :length_house
      t.integer :storeys
      t.float :bedrooms
      t.float :bathrooms
      t.float :living_areas
      t.float :study_areas
      t.float :price_base

      t.timestamps
    end
  end
end
