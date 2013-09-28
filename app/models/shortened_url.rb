class ShortenedUrl < ActiveRecord::Base
  belongs_to :url
  has_many :visits, dependent: :destroy
  after_create :set_address

private
  def set_address
    self.update(:address => "short#{self.id}") 
  end


end