class CreateFiles < ActiveRecord::Migration
  def change
    create_table :userfiles do |t|
      t.binary :file
      t.string :name
      t.string :ex

      t.timestamps
    end
  end
end
