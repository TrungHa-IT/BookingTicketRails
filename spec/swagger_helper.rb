require 'swagger_helper'

RSpec.describe 'Users API', type: :request do

  path '/users' do

    get('list users') do
      tags 'Users'
      produces 'application/json'

      response(200, 'successful') do
        run_test!
      end
    end

    post('create user') do
      tags 'Users'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          fullname: { type: :string },
          email: { type: :string },
          phone: { type: :string },
          password_hash: { type: :string },
          role: { type: :integer }
        },
        required: %w[fullname email phone password_hash role]
      }

      response(201, 'created') do
        let(:user) { { fullname: 'Nguyen Van A', email: 'a@gmail.com', phone: '0901234567', password_hash: 'hash123', role: 1 } }
        run_test!
      end
    end
  end

  path '/users/{id}' do
    parameter name: :id, in: :path, type: :string, description: 'User ID'

    get('show user') do
      tags 'Users'
      produces 'application/json'

      response(200, 'successful') do
        let(:id) { User.create(fullname: 'Test', email: 'test@gmail.com', phone: '123456789', password_hash: 'pass', role: 1).id }
        run_test!
      end
    end

    put('update user') do
      tags 'Users'
      consumes 'application/json'
      produces 'application/json'
      parameter name: :user, in: :body, schema: {
        type: :object,
        properties: {
          fullname: { type: :string },
          email: { type: :string },
          phone: { type: :string },
          password_hash: { type: :string },
          role: { type: :integer }
        }
      }

      response(200, 'updated') do
        let(:id) { User.create(fullname: 'Old', email: 'old@gmail.com', phone: '0000', password_hash: 'oldhash', role: 0).id }
        let(:user) { { fullname: 'New Name' } }
        run_test!
      end
    end

    delete('delete user') do
      tags 'Users'
      produces 'application/json'

      response(204, 'deleted') do
        let(:id) { User.create(fullname: 'Del', email: 'del@gmail.com', phone: '9999', password_hash: 'delhash', role: 0).id }
        run_test!
      end
    end
  end
end
