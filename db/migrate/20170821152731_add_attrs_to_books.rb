class AddAttrsToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :author, :string
    add_column :books, :category, :string
    add_column :books, :publisher, :string
    add_column :books, :description, :string
    add_column :books, :language, :string
    add_column :books, :condition, :string
  end
end
