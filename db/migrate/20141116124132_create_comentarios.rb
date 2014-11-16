class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :post_id
      t.integer :usuario_id
      t.binary :corpo

      t.timestamps
    end
  end
end
