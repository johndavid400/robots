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

  def image_upload
    @project = Project.find(params[:image][:viewable_id])
    @project.images.create(params[:image])
    if @project.save
      redirect_to edit_project_path(@project), :notice => "New project image uploaded successfully"
    else
      render "edit"
    end
  end

  def image_destroy
    @image = Image.find(params[:id])

    if @image.destroy
      redirect_to :back, :notice => "Image destroyed."
    else
      render "edit"
    end
  end

end
