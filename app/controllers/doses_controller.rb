class DosesController < ApplicationController

    def new 
        @dose = Dose.new
    
    end

    def create
        @cocktail = Cocktail.find(params[:cocktail_id])
        @dose = Dose.new(dose_params)
        @dose.cocktail = @cocktail
            if @dose.save
              redirect_to dose_path(@dose)
            else
              render "cocktails/show"
            end
    end

    private
    
    def dose_params
        params.require(:dose).permit(:name, :description)
    end
    
end