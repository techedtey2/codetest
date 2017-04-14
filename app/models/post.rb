class Post < ActiveRecord::Base
  paginates_per 5

  belongs_to :type
  belongs_to :user
  has_many   :comments

 	validates  :type, :title, :description, presence: true
end
