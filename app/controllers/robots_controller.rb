class RobotsController < Spree::BaseController
  def index
    @robots = Robot.all
  end

  def show
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.create(params[:robot])
    if @robot.save
      flash[:notice] = "Robot created successfully."
    end
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
