class CreateMicroposts < ActiveRecord::Migration
  def change
    create_table :microposts do |t|
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
