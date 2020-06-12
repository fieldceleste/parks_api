class AddNationalColumnToParks < ActiveRecord::Migration[5.2]
  def change
    change_table :parks do |t|
    t.column  :national, :boolean, default: false
    end
  end
end
