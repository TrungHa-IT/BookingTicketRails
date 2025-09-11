class Api::V1::AuthController < ApplicationController
  # Bỏ authenticate mặc định để login
  skip_before_action :authorize_request, only: [:login]

  # POST /api/v1/login
  def login
    user = User.find_by(email: params[:email])

    if user && user.password_hash == params[:password] # (thực tế nên dùng bcrypt)
      token = jwt_encode(user_id: user.id, role: user.role)
      render json: { token: token, user: { id: user.id, fullname: user.fullname, role: user.role } }, status: :ok
    else
      render json: { error: "Sai email hoặc mật khẩu" }, status: :unauthorized
    end
  end
end
