class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def update?
    true
  end
end
