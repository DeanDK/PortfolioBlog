class AddPositionToPortofolioos < ActiveRecord::Migration[5.0]
  def change
    add_column :portofolioos, :position, :integer
  end
end
