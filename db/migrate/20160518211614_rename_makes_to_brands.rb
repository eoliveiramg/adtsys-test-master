class RenameMakesToBrands < ActiveRecord::Migration
  def up
    rename_table :makes, :brands
  end

  def down
    rename_table :brands, :makes
  end
end
