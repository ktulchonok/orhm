class Post < ActiveRecord::Base
  translates :title, :text, fallbacks_for_empty_translations: false
end
