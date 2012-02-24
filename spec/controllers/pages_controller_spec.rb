# encoding: utf-8

require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Home")
    end
  end

  describe "GET 'concept'" do
    it "should be successful" do
      get 'concept'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'concept'
      response.should have_selector("title", :content => "Conceito")
    end
  end

  describe "GET 'modules'" do
    it "should be successful" do
      get 'modules'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'modules'
      response.should have_selector("title", :content => "Módulos")
    end
  end

  describe "GET 'photos'" do
    it "should be successful" do
      get 'photos'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'photos'
      response.should have_selector("title", :content => "Fotos")
    end
    
    it "should have the 'next' but not the 'prev' pagination link working in the first page" do
      get 'photos'
      assert_select "a[id=next_photo]", true
      assert_select "a[id=previous_photo]", false
    end
    
    it "should have the 'prev' but not the 'next' pagination link working in the last page" do
      get :photos, :id => 42
      assert_select "a[id=next_photo]", false
      assert_select "a[id=previous_photo]", true
    end
    
    it "should have the 'next' and 'previous' pagination link working all other pages" do
      get :photos, :id => 1
      assert_select "a[id=previous_photo][href='/fotos/0']"
      assert_select "a[id=next_photo][href='/fotos/2']"
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should have the right title" do
      get 'contact'
      response.should have_selector("title", :content => "Contato")
    end
  end

end
