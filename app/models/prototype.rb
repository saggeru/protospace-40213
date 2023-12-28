class Prototype < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validate :image_attached

  private

  def image_attached
    errors.add(:image, 'must be attached') unless image.attached?
  end
end
