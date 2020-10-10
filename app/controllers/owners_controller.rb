class OwnersController < ApplicationController

    def index
        @owners = Owner.all 
        render json: @owners, include: [:dog_owners, :dogs]
    end

    def show
        @owner = Owner.find(params[:id])
        render json: @owner, include: [:dog_owners, :dogs]
    end

    def create
        @owner = Owner.create(name: params[:name])
        render json: @owner
    end

end
