module TrailsHelper
    
    def trail_params
        params.require(:trail).permit(:name, :location)
    end

    def find_trail_by_id
        @trail = Trail.find_by_id(params[:id])
    end
end
