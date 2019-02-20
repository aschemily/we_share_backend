class Api::V1::TopicsController < ApplicationController
  before_action :find_topic, only:[:show]

  def index
    @topics = Topic.all
    render json: @topics, status: :ok
  end

  def show

  render json: @topic
  end




  private
  def topic_params
  params.require(:topic).permit(:topic_name)
  end

  def find_topic
  @topic = Topic.find(params[:id])
  end
  
end
