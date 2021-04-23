class TrailsController < ApplicationController
    include TrailsHelper
before_action :redirect_if_not_logged_in
    def new
        @trail = Trail.new
    end

    def create
        @trail = current_user.trails.build(trail_params)
        if @trail.save
            redirect_to trail_path(@trail)
        else
            flash[:message] = "Please try to create trail again"
            redirect_to new_trail_path
        end
    end

    def show
        find_trail_by_id
    end
     
end
