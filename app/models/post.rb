class Post < ApplicationRecord 

    has_many_attached :images

    validates :tittle, presence: true, length: { minimum: 5, maximun: 100 }
    validates :description, presence: true, length: { minimum: 5, maximun: 500 }
    validates :keyword, presence: true, length: { minimum: 5, maximun: 100 }

    belongs_to :user

    has_many :comments

    before_create :randomize_id
         private
         def randomize_id
           begin
             self.id = SecureRandom.random_number(1_000_000_000)
           end while User.where(id: self.id).exists?
         end
end
