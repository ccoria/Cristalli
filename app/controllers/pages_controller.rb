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

  def form_contact
    @title = "Contato"
  end
  
  def form_contact_confirmation
    @title = "Mensagem enviada com sucesso"
  end
  
  def send_mail
    name = params[:name]
    email = params[:email]
    fone = params[:phone]
    body = params[:message]
        
    ContactMailer.contact_email(name, email, fone, body, request.remote_ip).deliver
    
    redirect_to "/mensagem_enviada"
  end

end
