class StoreController < ApplicationController
    def index
       @stores = Store.all 
    end
    def new
       @store = Store.new
    end
    def create
       @store = Store.new(name: params[:store][:name], adress: params[:store][:adress], category_1: [:store][:category_1], category_2: [:store][:category_2])
       @store.save
       redirect_to '/store'
    end
    def edit
       @store = Store.find(params[:id])
    end
    def update
       @store = Store.update(name: params[:store][:name], adress: params[:store][:adress], category_1: [:store][:category_1], category_2: [:store][:category_2])
       redirect_to '/store'
    end
    def destroy
       store = Store.find(params[:id]) 
       store.destroy
       redirect_to '/store'
    end
end
