class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brand
      t.string :style
      t.float  :abv
      t.string :strength
      t.integer :likes, :default => 0
      t.integer :avg_rating

      t.timestamps
    end
  end
end
