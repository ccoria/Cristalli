class PagesController < ApplicationController
  def home
    @title = "Home"
  end

  def concept
    @title = "Conceito"
  end

  def modules
    @title = "Modulos"
  end

  def photos
    @title = "Fotos"
  end

  def contact
    @title = "Contato"
  end

end
