class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :roll_no, uniqueness: true

  def get_full_name
    "#{first_name} #{last_name}"
  end

  def get_us_name
    "#{last_name} #{first_name}"
  end

  def get_full_address
    [house_no, block, area, city, country].select(&:present?).join ', '
   end

  # def self.get

  # end
end
