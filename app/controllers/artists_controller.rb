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

        if @artist.valid?
            rediect_to artist_path(@artist.id)
        else
            flash[:errors] = @snack.errors.full_messages
            redirect_to artist_path(@artist.id)
        end
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :age, :title)
    end
end
