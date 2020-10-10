class DogOwnersController < ApplicationController

    def index
        @dog_owners = DogOwner.all 
        render json: @dog_owners, include: [:dog, :owner]
    end

    def show
        @dog_owner = DogOwner.find(params[:id])
        render json: @dog_owner, include: [:dog, :owner]
    end

    def create
        @dog_owner = DogOwner.create(
            dog_id: params[:dog_id],
            owner_id: params[:owner_id]
        )
        render json: @dog_owner
    end

end
