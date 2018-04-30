class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image
      t.string :caption
      t.string :post_id
      t.string :user_id
      t.timestamps 
    end
  end
end
