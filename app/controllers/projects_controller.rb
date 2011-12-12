class ProjectsController < Spree::BaseController

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(params[:project])
    if @project.save
      flash[:notice] = "Project created successfully."
    else
      flash[:error] = "There was an error creating your project"
    end
    redirect_to projects_path
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.update_attributes(params[:project])
    if @project.save
      flash[:notice] = "Project created successfully."
    else
      flash[:error] = "There was an error creating your project"
    end
  end

end
