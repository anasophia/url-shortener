class Url < ActiveRecord::Base
  has_many :shortened_urls, dependent: :destroy
  validates :address, presence: true
  before_save :normalize_address

  def self.make_shortened_url(address)
    url = self.find_or_create_by(address: address)
    url.shortened_urls.create
  end

private
  def normalize_address
    self.address = "http://" + self.address
  end
end