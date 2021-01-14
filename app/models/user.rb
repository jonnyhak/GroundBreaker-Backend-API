class User < ApplicationRecord
    has_many :investments
    has_many :projects, through: :investments 

end
