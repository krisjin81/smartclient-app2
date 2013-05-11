# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
for count in 1..20
  itemID = count
  itemName = "Pens stabiliner " + count.to_s
  SKU = Random.rand(1000...9999)
  category = "Office paper Product"
  units = "Ea"
  unitCost = Random.rand(0.1...2)
  inStock = 1
  nextShipment = Time.now
  
  Supplyitem.create(:itemID => itemID,
                  :itemName => itemName, 
                  :SKU => SKU, 
                  :description => "Descrition" + itemID.to_s, 
                  :category => category, 
                  :units => units,
                  :unitCost => unitCost,
                  :inStock => inStock,
                  :nextShipment => nextShipment )
 
end
