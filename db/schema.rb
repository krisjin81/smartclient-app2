ActiveRecord::Schema.define(:version => 20130508132151) do
  create_table "supplyitems", :force => true, :primary_key => :itemID do |t|      
      t.string    :itemName
      t.string    :SKU
      t.string    :description
      t.string    :category
      t.string    :units
      t.float     :unitCost
      t.boolean   :inStock
      t.datetime  :nextShipment 
   end 
end