class User < ActiveRecord::Base
	has_many :spaces
	has_many :clients, class_name: 'User' , through: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
