# encoding: utf-8

class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def concept
    @title = "Conceito"
  end

  def modules
    @title = "Módulos"
  end

  def photos
    @title = "Fotos"
    @photos = (1..21)
  end

  def contact
    @title = "Contato"
  end

end
