class ChangeModelsMakeIdToModelsBrandId < ActiveRecord::Migration
  def up
    rename_column :models, :make_id, :brand_id
  end

  def down
    rename_column :models, :brand_id, :make_id
  end
end
