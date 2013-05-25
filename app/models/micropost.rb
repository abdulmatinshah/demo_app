class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
  # Data validation
  # validates_presence_of :content
  validates :content, presence: true,
  					  length: {maximum: 140}
	validates :user_id, presence: true,
						numericality: true
end
