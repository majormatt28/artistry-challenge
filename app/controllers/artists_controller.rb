class ArtistsController < ApplicationController
    def index
        @artists = Artist.all
        #render :index
    end

    def show
        @artist = Artist.find(params[:id])
    end

    def edit
        @artist = Artist.find(params[:id])
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)

        redirect_to artist_path(@artist.id)
        
    end

    def update
    end

    def delete
        @artist = Artist.create(artist_params)

        @artist.destroy

        redirect_to artists_path
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :age, :title)
    end
end
