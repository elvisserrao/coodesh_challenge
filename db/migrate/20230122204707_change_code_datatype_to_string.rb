class ChangeCodeDatatypeToString < ActiveRecord::Migration[7.0]
  def up
    change_column :products, :code, :string
  end

  def down
    change_column :products, :code, :integer, using: 'number::integer'
  end
end
