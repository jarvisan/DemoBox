class CreateFiles < ActiveRecord::Migration
  def change
    create_table :userfiles do |t|
      t.string :name
      t.string :ex
      t.decimal :size

      t.timestamps
    end
  end
end
