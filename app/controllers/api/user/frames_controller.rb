class Api::User::FramesController < ApplicationController
    #user method for getting the frames that are active
    def show_activeframes
        frames = Frame.where("status = ?", true)
        if frames
            render json: {
                frames: frames 
            }else
            render json: {
                frames: error
            }
        end
    end
    def get_frame_price 
        price = Price.where("id = ? ", params[:price_id])
        if price
            render json: { 
                price: price 
            }else
            render json: {
                price: error
            }
        end
    end
end
