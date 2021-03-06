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
      flash[:notice] = @project.name + " has been added to " + @skill.name + "!"
      redirect_to skill_path(@project.skill)
    else
      render :new
    end
  end

  def edit
    @skill = Skill.find(params[:skill_id])
    @project = Project.find(params[:id])
  end

  def update
    @skill = Skill.find(params[:skill_id])
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice] = @project.name + " has been edited!"
      redirect_to skill_project_path(@skill, @project)
    else
      render :edit
    end
  end

  def destroy
    @skill = Skill.find(params[:skill_id])
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice] = @project.name + " has been deleted!"
    redirect_to skill_path(@skill)
  end

private
  def project_params
    params.require(:project).permit(:name, :description, :number)
  end
end
