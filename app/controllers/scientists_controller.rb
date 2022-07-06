class ScientistsController < ApplicationController

def index
    render json: Scientist.all
end

def show
scientist = find_scientist
render json: scientist, status: :ok
end

def create
    scientist = Scientist.create!(scientist_params)
    render json: scientist, status: :created
end

def update
    scientist = find_scientist
    scientist.update!(scientist_params)
    render json: scientist, status: :accepted
end

def destroy
    find_scientist.destroy
    head :no_content
end

private

def find_scientist
    Scientist.find(params[:id])
    #review Scientist.find(id: params[:id]) vs one above
end

def scientist_params
    params.permit(:name, :field_of_study, :avatar)
end

end
