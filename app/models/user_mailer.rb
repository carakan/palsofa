class UserMailer < ActionMailer::Base

  def message(email, nombre, mensaje)
    @recipients = ["carakan@gmail.com", "info@palsofa.com"]
    @from = 'info@palsofa.com'
    @subject = "Envio de mensaje"
    @sent_on = Time.now
    @body[:email] = email
    @body[:nombre] = nombre
    @body[:mensaje] = mensaje
  end

end
