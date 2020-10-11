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

    def update
        @dog = Dog.find(params[:id])
        @dog.update(name: params[:name])
        render json: @dog
    end

    def destroy 
        @dog = Dog.find(params[:id])
        @dog.destroy 
        render json: "Successfully deleted."
    end 

end
