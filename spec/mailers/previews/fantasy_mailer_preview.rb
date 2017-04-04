# Preview all emails at http://localhost:3000/rails/mailers/fantasy_mailer
class FantasyMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    ExampleMailer.sample_email("jaylind21@gmail.com")
  end
end
