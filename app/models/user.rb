class User < ApplicationRecord
  
  devise :database_authenticatable, 
         :registerable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist
        #  :recoverable, 
        #  :rememberable, 
        #  :validatable
        #  :confirmable, 
        #  :lockable, 
        #  :timeoutable, 
        #  :trackable,
        #  :omniauthable
end
