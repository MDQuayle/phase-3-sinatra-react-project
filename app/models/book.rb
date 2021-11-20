class Book < ActiveRecord::Migration[6.1]
    belongs_to :author
end