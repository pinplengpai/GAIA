module Admin
  class GardensController < ApplicationController
    def index
      @gardens = current_user.gardens
    end
  end
end
