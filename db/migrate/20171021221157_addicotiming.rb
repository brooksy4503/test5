class Addicotiming < ActiveRecord::Migration[5.1]
  def change
    add_column :icos, :ico_main_sale_open, :datetime
  end
end
