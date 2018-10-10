class ToolsController < ApplicationController

  before_action :set_toto, only: [:show, :edit, :update, :destroy]

  def new
    @tool = Tool.new
  end

  def create
    @tool = Tool.create(tool_params)
    if @tool.save
      flash[:notice]= "Tool is created successfully"
      redirect_to tool_path(@tool)
    else
      render 'new'
    end
  end

  def show

  end

  def edit

  end

  def index
    @tools = Tool.all
  end

  def update
    if @tool.update(tool_params)

      flash[:notice] = "Tool record is updated successfully"
      redirect_to tool_path(@tool)
    else
      render 'edit'
    end
  end

  def destroy

    @tool.destroy
    flash[:notice] = "Tool is Deleted successfully"
    redirect_to tools_path
  end

  def set_toto
    @tool = Tool.find(params[:id])
  end

  private
  def tool_params
    params.require(:tool).permit(:name, :description, :address)
  end

end
