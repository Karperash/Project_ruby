class Value < ApplicationRecord
  belongs_to :user
  belongs_to :image

  validates :value,
            presence: true,
            numericality: {
              only_integer: true,
              greater_than_or_equal_to: 0,
              less_than_or_equal_to: 100,
              message: "Оценка должна быть от 0 до 100"
            }

  after_save :update_image_average

  private

  def update_image_average
    image.update_ave_value
  end
end