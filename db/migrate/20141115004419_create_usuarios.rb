class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :email
      t.string :access_token
      t.string :uid
      t.string :photo_url
      t.string :provider

      t.timestamps
    end
  end
end
