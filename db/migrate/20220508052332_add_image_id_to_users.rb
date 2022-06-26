class AddImageIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :image_id, :text, after: :title
  end
end
