# frozen_string_literal: true

class Post < ApplicationRecord
  validates :title, presence: { message: 'タイトルを入力してください' },
                    length: { minimum: 10 }
  validates :content, presence: true
end
