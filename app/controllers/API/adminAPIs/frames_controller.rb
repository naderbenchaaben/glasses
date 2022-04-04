class API::ADMINAPIS::FramesController < ApplicationController
    #admin user method for creting new frames

    def create
        frame = Frame.create(Frame_params)
        if farame
          render json:{
            status: :created,
            Frame: company
          }
        else
          render json: { status: 500 }
        end
  
        
        
      end
end
