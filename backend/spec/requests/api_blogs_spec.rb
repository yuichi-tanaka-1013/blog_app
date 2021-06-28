require 'rails_helper'

RSpec.describe 'Blogs', type: :request do
  before(:each) do
    @params = {
      title: 'Test100',
      body: 'This is Test100'
    }
    @fixed_params = {
      title: 'Test200',
      body: 'This is Test200'
    }
  end

  describe 'GET v1/blogs' do
    it 'GET index' do
      get v1_blogs_path
      expect(response).to have_http_status(200)
    end
    it 'POST create' do
      post v1_blogs_path, params: @params, as: :json
      expect(Blog.count).to eq 1
      expect(response).to have_http_status(201)
    end
    it 'PATCH update' do
      post v1_blogs_path, params: @params, as: :json
      patch v1_blog_path(Blog.last.id), params: @fixed_params, as: :json
      expect(response).to have_http_status(200)
    end
    it 'DELETE destroy' do
      post v1_blogs_path, params: @params, as: :json
      expect(Blog.count).to eq 1
      delete v1_blog_path(Blog.last.id)
      expect(Blog.count).to eq 0
      expect(response).to have_http_status(200)
    end
  end
end
