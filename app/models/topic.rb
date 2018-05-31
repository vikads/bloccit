class Topic < ActiveRecord::Base
  has_many :posts, dependent: :destroy, :sponsored_posts 
end
