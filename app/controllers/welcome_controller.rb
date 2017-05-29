class WelcomeController < ApplicationController
  def index
    @projects = Project.where(revision_state: "approved")
  end
end
