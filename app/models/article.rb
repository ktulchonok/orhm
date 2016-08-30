class Article < ActiveRecord::Base
  belongs_to :topic

  delegate :name, to: :topic, prefix: true
  delegate :survey, to: :topic
end
