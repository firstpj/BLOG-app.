class Ability
  include CanCan::Ability

  def initialize(user)
    return unless user.present?

    can :read, :all
    can :create, [Comment, Post]

    can :destroy, Post, author: user.id
    can :destroy, Comment, user: user.id

    can :destroy, Post, author: user.id, role: 'admin'
    can :destroy, Comment, user: user.id, role: 'admin'
  end
end
