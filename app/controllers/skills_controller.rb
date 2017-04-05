class SkillsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @skills = Skill.all

  end

  def show
    @skill = Skill.find(params[:id])
  end

  def new
    @skill = current_user.skills.build
  end

  def create
    @skill = current_user.skills.build(list_params)
    if @skill.save
      redirect_to skills_path
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:id])
  end

  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy
    redirect_to skills_path
  end

  private
    def list_params
      params.require(:skill).permit(:language, :image)
    end
end
