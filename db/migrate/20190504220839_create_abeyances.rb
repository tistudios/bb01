class CreateAbeyances < ActiveRecord::Migration[5.2]
  def change
    create_table :abeyances do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.string :title
      t.text :reminder

      t.timestamps
    end
  end
end
