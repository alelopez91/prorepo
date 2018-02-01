class ProjectMailer < ApplicationMailer
  default from: 'notifications@prorepo.com'
 
  def auth_token_supply_email(project)
    @project = project
    @url  = 'http://example.com/login'
    mail(to: @project.email, subject: 'Token para ProRepo')
  end
end
