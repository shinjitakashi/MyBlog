class AddNameToMeddages < ActiveRecord::Migration[5.0]
  def change
    add_column :meddages, :name, :string
  end
end
