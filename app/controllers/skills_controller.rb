class SkillsController < ApplicationController
  def index
    @skills = Skill.all
  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = Skill.new
  end

  def create
    @skill = Skill.new(list_params)
    if @skill.save
      redirect_to skills_path
    else
      render :new
    end
  end

  def edit
  end

  private
    def list_params
      params.require(:skill).permit(:language)
    end
end
