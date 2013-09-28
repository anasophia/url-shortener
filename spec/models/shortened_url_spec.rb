require 'spec_helper'

describe ShortenedUrl do 
  let(:url) { Url.create(address: "http://www.example.com") }
  it { should belong_to :url }
  it { should have_many(:visits).dependent(:destroy) }

  it "should create an address" do 
    shortened_url = url.shortened_urls.create
    ShortenedUrl.all.first.address.should eq "short#{shortened_url.id}"
  end
end