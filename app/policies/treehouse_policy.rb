class TreehousePolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def my_treehouses?
    true
  end

  def my_treehouses_show?
    true
  end
end
