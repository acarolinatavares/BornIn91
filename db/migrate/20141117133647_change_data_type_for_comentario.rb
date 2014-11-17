class ChangeDataTypeForComentario < ActiveRecord::Migration
  def up
    change_table :comentarios do |t|
      t.change :corpo, :binary
    end
  end
end
