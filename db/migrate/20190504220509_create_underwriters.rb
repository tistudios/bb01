class CreateUnderwriters < ActiveRecord::Migration[5.2]
  def change
    create_table :underwriters do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
