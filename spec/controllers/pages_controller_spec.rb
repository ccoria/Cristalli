require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title",
                        :content => "Cristalli")
    end
    
  end

  describe "GET 'concept'" do
    it "should be successful" do
      get 'concept'
      response.should be_success
    end
  end

  describe "GET 'modules'" do
    it "should be successful" do
      get 'modules'
      response.should be_success
    end
  end

  describe "GET 'photos'" do
    it "should be successful" do
      get 'photos'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end

end
