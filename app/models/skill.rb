class Skill < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :language ,presence: true
  validates :image ,presence: true
  has_many :projects
  belongs_to :user
end
