require 'swagger_helper'

RSpec.describe 'api/v1/auth', type: :request do
  path '/api/v1/login' do
    post 'Đăng nhập để lấy JWT token' do
      tags 'Authentication'
      consumes 'application/json'
      produces 'application/json'

      parameter name: :credentials, in: :body, schema: {
        type: :object,
        properties: {
          email: { type: :string, example: "a@gmail.com" },
          password: { type: :string, example: "123456" }
        },
        required: ['email', 'password']
      }

      response '200', 'Đăng nhập thành công' do
        let!(:user) { User.create!(fullname: "Nguyen Van A", email: "a@gmail.com", password_hash: "123456", role: "user") }
        let(:credentials) { { email: user.email, password: "123456" } }
        run_test!
      end

      response '401', 'Sai email hoặc mật khẩu' do
        let(:credentials) { { email: "wrong@gmail.com", password: "wrong" } }
        run_test!
      end
    end
  end
end
