class ContactMailer < ActionMailer::Base
  
  default :to => 'cassiano.coria@gmail.com'
  default :from => 'contato@cristallieventos.com.br'
  
  def contact_email(name, from, phone, body)
    @subject = "Site: " + name
    @body = "Nome: #{name} \nFone: #{phone} \nEmail: #{from} \n\nMensagem:\n-----------------\n #{body}"
    
    mail(:subject => @subject, :body => @body)
    
  end
end