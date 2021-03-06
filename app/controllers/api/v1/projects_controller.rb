class Api::V1::ProjectsController < Api::V1::BaseController
  acts_as_token_authentication_handler_for User, except: [ :index, :show ]
  before_action :set_project, only: [ :show, :update ]
  
  def index
    @projects = policy_scope(Project)
  end

  def show
  end

  def update
    if @project.update(project_params)
      render :show
    else
      render_error
    end
  end

  def create
    @project = Project.new(project_params)
    @project.user = current_user 
    authorize @project
    if @project.save
      render :show
    else
      render_error
    end
  end

  private

  def set_project
    @project = Project.find(params[:id])
    authorize @project
  end

  def project_params
    params.require(:project).permit(:name, :description, :role, :date, :image_url)
  end

  def render_error
    render json: { errors: @project.errors.full_messages },
      status: :unprocessable_entity
  end
end