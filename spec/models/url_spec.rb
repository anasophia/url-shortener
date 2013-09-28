require 'spec_helper'

describe Url do 
  let(:url) {Url.new(address: "www.example.com") }
  it { should have_many(:shortened_urls).dependent(:destroy) }
  it { should validate_presence_of :address }

  it "finds a matching url in the database or creates a new one then makes a new shortened_url for the address" do 
    url.save
    Url.make_shortened_url(url.address)
    url.shortened_urls.length.should eq 1
  end

  it "checks the inputs and adds http://www. to the front if not there already" do
    url.save
    url.address.should eq ("http://www.example.com")    
  end
end