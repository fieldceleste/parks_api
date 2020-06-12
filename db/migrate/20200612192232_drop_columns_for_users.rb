class DropColumnsForUsers < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.remove :password_hash
      t.remove :password_salt
    end
  end
end
