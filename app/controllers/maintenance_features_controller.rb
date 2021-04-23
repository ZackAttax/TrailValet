class MaintenanceFeaturesController < ApplicationController
include MaintenanceFeaturesHelper
    before_action :redirect_if_not_logged_in
    
    def new
        @maintenance_feature = MaintenanceFeature.new
    end

    def create
        
    end
end
