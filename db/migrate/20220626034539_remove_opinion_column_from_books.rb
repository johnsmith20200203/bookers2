class RemoveOpinionColumnFromBooks < ActiveRecord::Migration[5.2]
  def change
    # NOTE: opinion -> body
    remove_column :books, :opinion, :string
  end
end
