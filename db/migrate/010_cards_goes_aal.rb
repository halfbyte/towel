class CardsGoesAal < ActiveRecord::Migration
  def self.up
    add_column :cards, :position, :integer
  end

  def self.down
    remove_column :cards, :position
  end
end
