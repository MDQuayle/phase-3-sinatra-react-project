class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :main_genre
      t.integer :number_of_books
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
