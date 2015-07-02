class ProjectsController < ApplicationController
  def new
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new
  end

  def show
    @skill = Skill.find(params[:skill_id])
    @project = Project.find(params[:id])
  end

  def create
    @skill = Skill.find(params[:skill_id])
    @project = @skill.projects.new(project_params)
    if @project.save
      flash[:notice] = "New project added to " + @skill.name + "!"
      redirect_to skill_path(@project.skill)
    else
      render :new
    end
  end

private
  def project_params
    params.require(:project).permit(:name, :description, :number)
  end
end
