class AddDescriptionsToPractitioners < ActiveRecord::Migration
  def change
    add_column :practitioners, :description, :string
  end
end
