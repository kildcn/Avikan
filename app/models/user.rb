class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         def create_badges

            @badges = [{name: "David Atenborugh"}, {name: "Tiny Bird"}]

         end
end
