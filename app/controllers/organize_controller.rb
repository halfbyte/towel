class OrganizeController < ApplicationController

  before_filter :load_project
  
  def index
    @cards = @project.cards.find_all_by_finished_at(nil)
  end
  
  def load_project
    @project = Project.find_by_url_slug(params[:id]) or raise ActiveRecord::RecordNotFound
  end
    
end
