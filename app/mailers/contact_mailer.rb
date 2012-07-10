require 'iconv'

class ContactMailer < ActionMailer::Base
  
  default :to => 'contato@cristallieventos.com.br'
  default :from => 'site@cristallieventos.com.br'
  
  def contact_email(name, from, phone, body, ip)
    @subject = "Site: #{name}"
    @body = "Nome: #{name} \nFone: #{phone} \nEmail: #{from} \n\nMensagem:\n-----------------\n #{body} \n\n\n-----------------\n User IP: #{ip}"
    
    mail(:subject => filter_encoding(@subject), 
         :body => filter_encoding(@body));
  end
  
  def filter_encoding(untrusted_string)
    # solution: http://po-ru.com/diary/fixing-invalid-utf-8-in-ruby-revisited/
    ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
    
    ic = Iconv.new('UTF-8//IGNORE', 'UTF-8')
    valid_string = ic.iconv(untrusted_string + ' ')[0..-2]
    
    return valid_string
  end
    
    
end