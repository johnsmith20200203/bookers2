class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.references :user, index: true
      t.string :title
      t.text :opinion

      t.timestamps
    end
  end
end
