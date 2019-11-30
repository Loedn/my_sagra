class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.date :start
      t.date :end
      t.string :location
      t.text :description

      t.timestamps
    end
  end
end
