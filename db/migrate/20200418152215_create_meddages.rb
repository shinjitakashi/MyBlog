class CreateMeddages < ActiveRecord::Migration[5.0]
  def change
    create_table :meddages do |t|
      t.string :title
      t.string :message

      t.timestamps
    end
  end
end
