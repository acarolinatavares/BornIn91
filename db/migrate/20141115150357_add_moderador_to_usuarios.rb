class AddModeradorToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :moderador, :boolean
  end
end
