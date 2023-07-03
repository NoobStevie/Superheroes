class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        render json: Power.all
    end

    def show
        power = Power.find(params[:id])
        render json: power
    end

    def update
        power = Power.find(params[:id])
        power.update!(power_params)
        render json: power
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end

    private

    def power_params
        params.permit(:name, :description)
    end

    def render_not_found_response
        render json: { error: "Power not found" }, status: :not_found
    end
end