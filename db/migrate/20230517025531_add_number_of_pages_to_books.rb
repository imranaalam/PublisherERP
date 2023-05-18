class AddNumberOfPagesToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :number_of_pages, :integer
  end
end
