class Api::User::GlassesController < ApplicationController

    def create
        frame = Frame.where("id = ? ", params[:frame_id])
        lense = Lense.where("id = ? ", params[:lense_id])
        price_frame = Price.where("id = ? ", params[:price_id_frame])
        price_lense = Price.where("id = ? ", params[:price_id_lense])
        curr = params[:currency]
      
        if frame[:stock]< 1
            render json:{
                error: "frame out of stock"
            }
        
        end
         if  lense[:stock] < 1
            render json:{
                error: "lense out of stock"
            }else
            glasses = Glasses.create(
                frame_id: frame.id,
                lense_id: lense.id,
                price: price_frame[:curr] + price_lense[:curr]
            )
        end
        if glasses
            render json:{
                status: :created,
            }
        else
            render json:{
                status: 500
            }
        end
    end
end
