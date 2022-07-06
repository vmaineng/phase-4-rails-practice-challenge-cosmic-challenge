class ApplicationController < ActionController::API

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_reponse
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def render_unprocessable_entity_reponse(exception)
        render json: { errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end

    def render_not_found_response(exception)
        render json: {error: "#{exception.model} not found"}, status: :not_found
    end




# rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
# rescue_from ActiveRecord::RecordInvalid, with: :render_invalid



# def render_not_found(exception)
#     render json: {error: "#{exception.model} not found"}, status: :not_found
# end

# def render_invalid(exception)
#     render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
# end

end
