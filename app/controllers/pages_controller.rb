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
    @photo = params[:id] || 0
  end

  def contact
    @title = "Contato"
  end

end
