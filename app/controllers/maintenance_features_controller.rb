class MaintenanceFeaturesController < ApplicationController
include MaintenanceFeaturesHelper
    before_action :redirect_if_not_logged_in
    
    def index
        @maintenance_feature_needs_attention = MaintenanceFeature.needs_attention
        @maintenance_feature_task_completed = MaintenanceFeature.task_completed
    end
    def new
        @trail_id = params[:trail_id]
        @maintenance_feature = MaintenanceFeature.new
    end

    def create
        @maintenance_feature = current_user.maintenance_features.new(maintenance_feature_params)
        if @maintenance_feature.save
            redirect_to trail_path(@maintenance_feature.trail_id)
        else
            maintenance_feature_error_messages
            redirect_to new_trail_maintenance_feature_path(@maintenance_feature.trail_id)
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
            maintenance_feature_error_messages
            redirect_to edit_trail_maintenance_feature_path(@maintenance_feature)
        end
    end
end