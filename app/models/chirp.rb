class Chirp < ApplicationRecord
  validates :title, :content, presence: true, length: { in:1..140 }
end
