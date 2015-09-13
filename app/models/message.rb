class Message < ActiveRecord::Base

  validates :content, :author, presence: true
  validate :url_validator

  private
  def url_validator
    if url
      # unless =~ /^(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w \.-]*)*\/?$/
      #   errors.add(:url, "invalid url format")
      # end
    end
  end
  
end