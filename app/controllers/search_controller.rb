class SearchController < ApplicationController
    def index
    end

    def results
        @users = User.where('name LIKE ?', "%#{params[:q]}%")
    end
end
