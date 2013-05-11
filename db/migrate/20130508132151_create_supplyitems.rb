class CreateSupplyitems < ActiveRecord::Migration
  def change
    create_table :supplyitems do |t|       
      t.timestamps
    end
  end
end
