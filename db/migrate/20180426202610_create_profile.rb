class CreateProfile < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :blog_name
      t.string :sub_name
      t.string :description
      t.string :user_id
    end
  end
end
