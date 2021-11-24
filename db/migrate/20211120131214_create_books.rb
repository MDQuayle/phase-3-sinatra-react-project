class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :name
      t.string :author
      t.string :genre
      t.integer :author_id
      t.timestamps
    end
  end
end
