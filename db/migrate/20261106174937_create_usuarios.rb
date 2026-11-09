class CreateUsuarios < ActiveRecord::Migration[8.1]
  def change
    create_table :usuarios do |t|
      t.string :name
      t.string :password_digest
      t.timestamps
    end
    insert
  end
end
