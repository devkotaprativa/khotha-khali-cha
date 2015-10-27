class AddPriceToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :price, :integer
  end
end
