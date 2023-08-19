class BadsController < ApplicationController
    # http_basic_authenticate_with name: "silver", password: "silver123", only: [:index]
    # before_action :authenticate_user!, except: [:index, :show]
    # before_action :correct_user, only: [:edit, :update, :destroy]
    def index
        
        @t = params[:categories]
        if @t
            @bad = Bad.where(categories: "#{@t}")
        else
            @bad = Bad.all
        end
       # render({json: @bad})
    end

    def my_bad
        @bad = Bad.all
    end

    def new
        # @bad = Bad.new
        @bad = current_user.bads.build
    end

    def create
        # @bad = Bad.new(req_params)
        @bad = current_user.bads.build(req_params)
        if @bad.save
            redirect_to root_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @bad = Bad.find(params[:id])
    end

    def edit
        @bad = Bad.find(params[:id])
    end

    def update
        @bad = Bad.find(params[:id])
        if @bad.update(req_params)
            redirect_to root_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @bad = Bad.find(params[:id])
        @bad.destroy
        redirect_to root_path
    end

    # def correct_user
    #     @bad = current_user.bads.find_by(id: params[:id])
    #     redirect_to bads_path, notice: "Not an authorized user!" if @bad.nil?
    # end

    private
    def req_params
        params.require(:bad).permit(:title, :body, :user_id, :categories)
    end
    
end