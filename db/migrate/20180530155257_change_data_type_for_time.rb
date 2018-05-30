class ChangeDataTypeForTime < ActiveRecord::Migration[5.2]
  def change
    change_column :hangouts, :time, :string
  end
end
