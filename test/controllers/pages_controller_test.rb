require "test_helper"

describe PagesController do
  it "should get home" do
    get '/'
    value(response).must_be :success?
  end

  it "should get about" do
    get '/about'
    value(response).must_be :success?
  end

  it "should get contact" do
    get '/contact'
    value(response).must_be :success?
  end

  it "should get cgv" do
    get '/cgv'
    value(response).must_be :success?
  end

  it "should get privacy" do
    get '/privacy'
    value(response).must_be :success?
  end

end

