class RobotsController < Spree::BaseController

  def index
    @robots = Robot.all
  end

  def show
    redirect_to robots_path
    @robot = Robot.find(params[:id])
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.create(params[:robot])
    if @robot.save
      flash[:notice] = "Robot created successfully."
    end
    redirect_to robots_path
  end

  def edit
    @robot = Robot.find(params[:id])
  end

  def update
    @robot = Robot.update_attributes(params[:robot])
  end

  def destroy
  end

end
