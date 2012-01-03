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
    @photos_count = 42
    @photo = (params[:id] || 0).to_i
    
    # avoiding the url fotos/0
    if params[:id] and @photo == 0
      redirect_to "/fotos"
    end
  end

  def contact
    @title = "Contato"
  end

end
