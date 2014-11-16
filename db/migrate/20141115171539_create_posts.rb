class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :titulo
      t.binary :corpo
      t.integer :usuario_id

      t.timestamps
    end
  end
end
