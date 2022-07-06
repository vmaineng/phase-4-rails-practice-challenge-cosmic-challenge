class MissionsController < ApplicationController

def index
    render json: Mission.all
end

def create
    mission = Mission.create!(mission_params)
    render json: mission.planet, status: :created
    #why not a serializer? 
    #could get missions for one planet : planet.missions
    #it is a one to many relationship (for associated data)
    #have to understand the relationship (one to one, or one to many)
    #scientist and plants are many to many relationship
    #which planet_id has all the missions? 
    #planet.mission = to get all mission associated with this planet
    #to get the scientist, 
end


#serializer can grab only one association level deep from returning data


private

def mission_params
    params.permit(:name, :scientist_id, :planet_id)
end

end
