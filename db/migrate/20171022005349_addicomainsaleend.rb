class Addicomainsaleend < ActiveRecord::Migration[5.1]
  def change
    add_column :icos, :ico_main_sale_close, :datetime
  end
end
