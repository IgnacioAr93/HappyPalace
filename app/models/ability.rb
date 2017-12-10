class Ability
include CanCan::Ability
def initialize(user)
user ||= User.new # guest user (not logged in)
if user.admin?
can :manage, :all
else
can :read, :all
end
end

private
def admin?
user_signed_in? && current_user.role === ‘admin’ ? true : false
end
end
