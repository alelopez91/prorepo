class WelcomeController < ApplicationController
  def index
    q = params[:search]

    unless q.blank?
      @projects = Project.solr_search do
        fulltext q
      end.results
    else
      @projects = Project.approved
    end
  end
end
