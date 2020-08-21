class AppearancesController < ApplicationController

def new
    @appearance = Appearance.new
end

def create
    @appearance = Appearance.new(a_params)
    if @appearance.valid?
        @appearance.save
        redirect_to episode_path(@appearance.episode_id)
    else
        flash[:message] = @appearance.errors.messages
        redirect_to new_appearance_path
    end
end


private

def a_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
end


end
