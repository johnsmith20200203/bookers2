class AddBodyColumnToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :body, :string
  end
end
