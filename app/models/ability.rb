# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, ActiveAdmin::Page, name: "Dashboard"

    can :create, Word
    can %i[read update destroy], Word, admin_user: user
  end
end
