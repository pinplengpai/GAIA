module Admin
  class GardensController < ApplicationController
    def index
      @gardens = current_user.owned_gardens
    end
  end
end
