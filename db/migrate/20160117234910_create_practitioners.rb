class CreatePractitioners < ActiveRecord::Migration
  def change
    create_table :practitioners do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
