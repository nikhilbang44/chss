require 'role_model'
class User < ApplicationRecord
  include RoleModel
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable
  attr_accessor :roles_mask
  # declare the valid roles -- do not change the order if you add more
  # roles later, always append them at the end!
  roles :normal, :admin, :manager, :author
end
