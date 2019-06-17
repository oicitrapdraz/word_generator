class Word < ApplicationRecord
  belongs_to :admin_user

  validates :word_string, uniqueness: true, presence: true, allow_blank: false
end
