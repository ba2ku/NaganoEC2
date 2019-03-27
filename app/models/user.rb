class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_paranoid
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address
  before_create :build_default_address

  has_many :carts, dependent: :destroy
  has_many :shopping_histories, dependent: :destroy
  private
  def build_default_address
    build_address
    true
  end
end

