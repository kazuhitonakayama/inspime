class PhotosController < ApplicationController
    before_action :set_list, only: %i(edit update destroy)
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

    def edit
    end

    def update
      if @photo.update_attributes(photo_params)
        redirect_to "/"
      else
        render action: :edit
      end
    end

    def destroy
      @photo.destroy
      redirect_to "/"
    end
    
    private
      def photo_params
        params.require(:photo).permit(:image,:title,:memo)
      end
      def set_list
        @photo = Photo.find_by(id: params[:id])
      end
end
