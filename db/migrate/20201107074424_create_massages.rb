class CreateMassages < ActiveRecord::Migration[6.0]
  def change
    create_table :massages do |t|
      t.references :room, foreign_key: true
      t.references :user, foreign_key: true
      t.string :content 
      t.timestamps
    end
  end
end
