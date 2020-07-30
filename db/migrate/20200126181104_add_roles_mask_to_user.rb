class AddRolesMaskToUser < ActiveRecord::Migration[5.2]
  def change
    change_table :users do |t|
      t.integer  :roles_mask, default: 1 , null: false
    end
  end
end
