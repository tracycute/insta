class Post < ApplicationRecord 

    validates :tittle, presence: true, length: { minimum: 5, maximun: 100 }
    validates :description, presence: true, length: { minimum: 5, maximun: 500 }
    validates :keyword, presence: true, length: { minimum: 5, maximun: 100 }
end
