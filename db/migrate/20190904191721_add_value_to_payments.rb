class AddValueToPayments < ActiveRecord::Migration[5.2]
  def change
    add_column :payments, :value, :float
    add_column :payments, :dt_venc, :date
  end
end
