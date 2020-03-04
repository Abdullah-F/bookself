class Author < ApplicationRecord

  def coordinates
    [rand(90), rand(90)]
  end

  validates :last_name, presence: true
end
