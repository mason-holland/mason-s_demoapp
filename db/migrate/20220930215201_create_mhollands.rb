class CreateMhollands < ActiveRecord::Migration[7.0]
  def change
    create_table :mhollands do |t|
      t.string :mason_holland@tayloredu

      t.timestamps
    end
  end
end
