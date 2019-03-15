class FurnituresController < ApplicationController
    
    def index
        @furnitures = Furniture.all
        
    end
    
    def show
        @furniture = Furniture.find(params[:id])
        @locations = @furniture.locations
        #@furniture.image.attach(params[:image])
        #@test = @furniture.locations.where(:id => [1, 2]).sum(:storage_count) #adds all the numbers from the Location.all table. It goes through all the Locations in the DB and ads :storage_count for this id together.
        #remember that @furniture.locations nests Furniture with Locations so the correct params[:id] is maintained
        
    end
    
    def new
        @furniture = Furniture.new    
    end
    
    def create
        @furniture = Furniture.new(furniture_params)
        #@furniture.image.attach(params[:image])
        if @furniture.image.attached? #checks if there is an image-file attached before saving item
            if @furniture.save
                redirect_to '/furnitures'
            end
        else
            render 'new'
        end  
    end
    
    def edit
		@furniture = Furniture.find(params[:id])
    end
    
    def update
        @furniture = Furniture.find(params[:id])
        if @furniture.update_attributes(furniture_params) #keep in mind that update_attributes need to be in plural i.e. update_attributeS
            redirect_to '/furnitures'
        else
            render 'edit'
        end
    end
	
	def destroy
		@furniture = Furniture.find(params[:id])
		@furniture.destroy()
		
		redirect_to '/furnitures'
	end
    
    private
        def furniture_params
            params.require(:furniture).permit(:name, :description, :image, :A2, :BC2, :B2F, :BU50, :BU60, :ABU1, :Fjellager, :Stollager)
        end
    
end
