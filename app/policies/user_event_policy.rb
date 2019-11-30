class UserEventPolicy < ApplicationPolicy
  class Scope < Scope
    def create?
      true
    end

    def destroy?
      record.user == user
    end

    def resolve
      scope.all
    end
  end
end
