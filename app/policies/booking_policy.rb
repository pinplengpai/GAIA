class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
  end

  def show?
    user_or_landlord?
  end

  def update?
    user_or_landlord?
  end

  def destroy?
    record.garden.user == user
  end

  private

  def user_or_landlord?
    record.user == user || record.garden.user == user
  end
end
