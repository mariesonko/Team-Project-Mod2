class ChangeDataTypeForDate < ActiveRecord::Migration[5.2]
  def change
    change_column :hangouts, :date, :string
  end
end
