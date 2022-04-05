class Api::User::LensesController < ApplicationController
    #user method for getting all the lenses
    def show_lenses
        lenses = Lense.all
        if lenses

            render json: {
                lenses: lenses
            }else
            render json: {
                lenses: error
            }
        end
    end
    def get_lense_price 
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
