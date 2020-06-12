class AddParksTable < ActiveRecord::Migration[5.2]
  def change
    create_table :parks do |t|
      t.column :name, :string
      t.column :state, :string
      t.column :description, :string
      t.column :established, :integer
    end
  end
end
