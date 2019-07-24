class DogsController < ApplicationController
    # before_action :current_dog, only: [:show, :edit, :update]
    def index
        @dogs = Dog.all
    end
    def new
        @dog = Dog.new
    end
    def show
        @dog = Dog.find(params[:id])
    end
    

    def create
        @dog = Dog.create(dogs_params)
    end
    def edit 
        @dog = Dog.find(params[:id])
    end
    private 
    def dogs_params
        params.require(:dog).permit(:name, :breed, :age)
    end
    def current_dog
        @dog = Dog.find(params[:id])
    end 
end
