module Admin
  class GardensController < ApplicationController
    def index
      @gardens = current_user.owned_gardens
      @owned_bookings = current_user.owned_gardens.map(&:bookings).flatten
    end
  end
end
