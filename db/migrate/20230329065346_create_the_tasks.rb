class CreateTheTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :the_tasks do |t|
      t.string :name
      t.string :description
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end
