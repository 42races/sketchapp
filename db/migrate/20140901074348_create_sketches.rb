class CreateSketches < ActiveRecord::Migration
  def change
    create_table :sketches do |t|
      t.string :sketch
      t.string :description

      t.timestamps
    end
  end
end
