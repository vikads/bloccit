class SponsoredPost < ActiveRecord::Base
  belongs_to :topic
  #has_many :comments, dependent: :destroy #not yet with comments
end
