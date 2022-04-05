class Api::Admin::LensesController < ApplicationController
    #admin user method for creating new lenses
    def create
        price = Price.create(
            USD: params[:USD],
            GRP: params[:GRP],
            EUR: params[:EUR],
            JOD: params[:JOD],
            JPY: params[:JPY],
        )
  if( price.USD and price.GRP  and price.EUR and price.JOD  and price.JPY  ) != nil
    lense = Lense.create(
        name: params[:name],
        description: params[:description],
        presecription_type: params[:presecription_type],
        lense_type: params[:lense_type],
        price_id: price.id,
    )
end
    if lense 
        render json:{
            status: :created

        } 
    else
        render json: { status: 500 }
            
        
            
        end 
    
      end
end
