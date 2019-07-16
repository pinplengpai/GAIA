class RenameImageUrlToPicture < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :image_url, :picture
    rename_column :gardens, :image_url, :picture
  end
end
