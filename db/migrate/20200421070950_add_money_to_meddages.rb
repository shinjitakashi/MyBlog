class AddMoneyToMeddages < ActiveRecord::Migration[5.0]
  def change
    add_column :meddages, :money, :integer
  end
end
