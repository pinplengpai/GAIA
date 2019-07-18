class AddGardenRulesAndNeighbourhoodToGarden < ActiveRecord::Migration[5.2]
  def change
    add_column :gardens, :garden_rules, :text
    add_column :gardens, :neighbourhood, :text
  end
end
