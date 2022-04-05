class OrdersController < ApplicationController
    def create
        order = Order.create(
         glass_id: params[:glass_id]   
        )

        frame = Frame.find(params[:id])
        frame.update_attribute(:stock,(frame.stock)-1)
        lense= Lense.find(params[:id])
        lense.update_attribute(:stock,(lense.stock)-1)

    end
    
end
