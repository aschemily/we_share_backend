class Api::V1::ConversationsController < ApplicationController

  def index
    @user = User.find(params[:id])

    render json: @user.conversations
  end

  def show_messages
    @user = User.find(params[:id])
    @conversation = Conversation.find(params[:id])

    if @user.id == current_user.id
      render json: @conversation.messages
    end
  end

  def show_users
    byebug
    @user = User.find(params[:id])
    @conversation = Conversation.find(params[:id])

    if @user.id == current_user.id
      render json: @conversation.users
    end

  end





end
