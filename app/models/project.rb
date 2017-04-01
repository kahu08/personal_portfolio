class Project < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :project_name ,presence: true
  validates :project_description  ,presence: true
  validates :image  ,presence: true
  validates :link ,presence: true

  belongs_to :skill
end
