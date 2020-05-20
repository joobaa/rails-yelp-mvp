# frozen_string_literal: true

class Restaurant < ApplicationRecord
  categories = %w[chinese italian japanese french belgian]

  has_many :reviews, dependent: :destroy
  validates :phone_number, :name, :category, :address, presence: true
  validates_inclusion_of :category, in: categories
end
