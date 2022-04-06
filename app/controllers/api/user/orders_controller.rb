class Api::User::OrdersController < ApplicationController
    def create

        order = Order.create(
         glass_id: params[:glass_id]   
        )
        if order
            render json:{
                status: :created,
                 }
        frame = Frame.find(params[:frame_id]),
        frame.update_attribute(:stock,(frame[:stock])-1),
        lense= Lense.find(params[:lense_id]),
        lense.update_attribute(:stock,(lense[:stock])-1)
           
        else
            render json:{
                status: 500
            }
        end
        

    end
    
end
