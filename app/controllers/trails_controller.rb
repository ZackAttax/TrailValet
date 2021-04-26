class TrailsController < ApplicationController
    include TrailsHelper
before_action :redirect_if_not_logged_in
    def new
        @trail = Trail.new
    end

    def index
        @trails = Trail.all
    end

    def create
        @trail = Trail.new(trail_params)
        if @trail.save
            redirect_to trail_path(@trail)
        else
            flash[:message] = @trail.errors.full_messages
            render :new
        end
    end

    def show
        find_trail_by_id
    end
     
end
