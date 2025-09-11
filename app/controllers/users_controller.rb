class UsersController < ApplicationController
  before_action :authorize_request          # bắt buộc login
  before_action :authorize_admin, only: [:index, :destroy]  # chỉ admin được xem danh sách hoặc xóa
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    users = User.all
    render json: users
  end

  # GET /users/:id
  def show
    # Người dùng thường chỉ được xem chính họ
    if current_user.role != 1 && current_user.id != @user.id
      return render json: { error: "Bạn không có quyền xem user này" }, status: :forbidden
    end

    render json: @user
  end

  # POST /users
  def create
    user = User.new(user_params)
    if user.save
      render json: user, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PUT/PATCH /users/:id
  def update
    # User chỉ update chính mình, admin thì update được tất cả
    if current_user.role != 1 && current_user.id != @user.id
      return render json: { error: "Bạn không có quyền update user này" }, status: :forbidden
    end

    if @user.update(user_params)
      render json: @user
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # DELETE /users/:id
  def destroy
    @user.destroy
    head :no_content
  end

  private

  def set_user
    @user = User.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    render json: { error: "User not found" }, status: :not_found
  end

  def user_params
    params.require(:user).permit(:fullname, :email, :phone, :password_hash, :role)
  end
end
