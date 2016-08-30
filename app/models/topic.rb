class Topic < ActiveRecord::Base
  belongs_to :messenger
  has_many :articles
end
