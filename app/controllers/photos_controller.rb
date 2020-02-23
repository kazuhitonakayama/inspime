class PhotosController < ApplicationController
    def index
        @photos = Photo.all
    end
    
    def new
        @photo = Photo.new
    end
    
    def create
        @photo = Photo.new(photo_params)
    if @photo.save
          redirect_to action: :index
        else
          redirect_to action: :new
        end
    end
    
    private
      def photo_params
        params.require(:photo).permit(:image,:title,:memo)
      end
end
