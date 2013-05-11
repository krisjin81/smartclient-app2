require 'DSResponse'
require 'DSRequest'
class SmartclientController < ApplicationController         
    def index
      
    end
    
    def data      
      # set the request parameters
      request = DSRequest.new(params)
      unless request.data.empty?                      
          @supplyItems = Supplyitem.filter(request)        
          supplyitems_count =  Supplyitem.filter(request).count
      else
          # get all supplyitems from the database
          @supplyItems = Supplyitem.find(:all)                    
          supplyitems_count = Supplyitem.count
      end 
     
      # get the count of the supplyitems
      
      endRow = (supplyitems_count > 0)?supplyitems_count -1 : supplyitems_count 
      response = DSResponse.new
      response.data = @supplyItems
      response.startRow = 0
      response.endRow = endRow
      response.status = 0
      response.totalRow = supplyitems_count      
            
      @result = { :response => response }
      
      render json: @result
    end 
end
 