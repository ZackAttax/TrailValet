class MaintenanceFeaturesController < ApplicationController
include MaintenanceFeaturesHelper
    before_action :redirect_if_not_logged_in
    
    def new
        @trail_id = params[:trail_id]
        @maintenance_feature = MaintenanceFeature.new
    end

    def create
        @maintenance_feature = current_user.maintenance_features.new(maintenance_feature_params)
        if @maintenance_feature.save
            redirect_to trail_path(@maintenance_feature.trail_id)
        end
    end
    def show
        current_maintenance_feature
    end

    def edit 
        @trail_id = params[:trail_id]
        @maintenance_feature = MaintenanceFeature.find(params[:id])
       
    end

    def update
    @maintenance_feature = MaintenanceFeature.find_by(id: params[:id])
        @maintenance_feature.update(maintenance_feature_params)
        if @maintenance_feature.valid?
            redirect_to maintenance_feature_path(@maintenance_feature)
        else
            #TODO: ERROR MESSAGES
            render :edit
        end
    end
end