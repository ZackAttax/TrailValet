module MaintenanceFeaturesHelper
    
    def maintenance_feature_params
        params.require(maintenance_feature).permit(:location, :issue, :tools_needed, :trail_id)
    end
end
