class ChangeNumberAttributeToStringInCard < ActiveRecord::Migration[6.0]
  def change
    change_column :cards, :number, :string
  end
end
