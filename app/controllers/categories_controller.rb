class CategoriesController < ApplicationController

    def new
    
        @category=Category.new
    end

     def show
     end
         def create
             @category=Category.new(category_params)
             if @category.save
                 redirect_to root_path
             else
                 render :new, status: :unprocessable_entity
             end
         end

        end
         
         private 
         def category_params
             params.require(:category).permit(:name, :description, :active)
         end
     end
