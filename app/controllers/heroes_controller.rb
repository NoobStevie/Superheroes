class HeroesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        render json: Hero.all
    end

    def show
        hero = Hero.find(params[:id])
        render json: hero, serializer: HeroSerializer
    end

    private

    def render_not_found_response
        render json: { error: "Hero not found" }, status: :not_found
    end
end