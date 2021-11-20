class Author < ActiveRecord::Migration[6.1]
    has_many :books
end