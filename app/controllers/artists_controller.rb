class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
        #render :index
    end

    def show
        @artist = Artist.find(params[:id])
    end
end
