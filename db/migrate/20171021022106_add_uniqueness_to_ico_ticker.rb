class AddUniquenessToIcoTicker < ActiveRecord::Migration[5.1]
  def change
    add_index :icos, :ico_ticker, unique: true
  end
end
