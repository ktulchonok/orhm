class Messenger < ActiveRecord::Base
  has_many :topics, dependent: :destroy
  has_many :articles, through: :topics
end
