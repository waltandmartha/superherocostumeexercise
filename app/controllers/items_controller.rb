class ItemsController < ApplicationController
    def index
        @items = Items.all
    end

    def new
        @items = Items.new
    end

    def create
        @items = Item.new(params.include(:label, :description, :item_type, :price))

        if @items.save 
            redirect_to show_items_path(@item)
        else
            error 500
        end 

    end
    

end