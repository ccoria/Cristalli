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
    
    #render "form_contact"
  end
  
  def send_mail
    name = params[:name]
    email = params[:email]
    fone = params[:phone]
    body = params[:message]
    
    puts "Name #{name}\nemail #{email}\nfone #{fone}\nbody #{body}"
    
    redirect_to "/"
    
    #ContactMailer.contact_email("flavialiliane@yahoo.com.br", "Flavia Liliane Cordeiro Bastos Blanco Rodriguez", "").deliver
  end

end
