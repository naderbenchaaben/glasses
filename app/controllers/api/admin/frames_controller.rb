class Api::Admin::FramesController < ApplicationController
    #admin user method for creting new frames

    def create
        price = Price.create!(
            USD: params[:USD],
            GRP: params[:GRP],
            EUR: params[:EUR],
            JOD: params[:JOD],
            JPY: params[:JPY],
        )
  if price #and ( price.USD and price.GRP  and price.EUR and price.JOD  and price.JPY  ) != nil 
    frame = Frame.create!(
        name: params[:name],
        description: params[:description],
        status: params[:status],
        stock: params[:stock],
        price_id: price.id,
    )
end
    if frame 
        render json:{
            status: :created

        } 
    else
        render json: { status: 500 }
            
        
            
        end 
    
      end
end
