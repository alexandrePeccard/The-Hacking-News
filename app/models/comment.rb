class Comment < ApplicationRecord
	has_many :sub_comments, class_name: "Comment", foreign_key: "original_comment_id"
	belongs_to :original_comment, class_name: "Comment", optional: true
	belongs_to :link, optional: true
	belongs_to :user, optional: false
end