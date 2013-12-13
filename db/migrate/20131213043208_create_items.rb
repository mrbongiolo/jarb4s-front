class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :title
      t.text    :url
      t.text    :image_url
      t.integer :quantity
      t.money   :starting_price
      t.string  :quality
      t.string  :rarity
      t.string  :item_type
      t.string  :hero
      t.string  :steam_class_id
      t.string  :steam_instance_id
      t.string  :steam_market_hash_name

      t.timestamps
    end
  end
end
