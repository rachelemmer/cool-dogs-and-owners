class DogsController < ApplicationController

    def index
        @dogs = Dog.all 
        render json: @dogs, include: [:dog_owners, :owners]
    end

    def show
        @dog = Dog.find(params[:id])
        render json: @dog, include: [:dog_owners, :owners]
    end

    def create
        @dog = Dog.create(name: params[:name])
        render json: @dog
    end

end
