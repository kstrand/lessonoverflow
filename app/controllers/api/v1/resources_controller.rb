module Api
  module V1
    class ResourcesController < ApplicationController
      respond_to :json

      # return all resources
      def index
        respond_with Resource.all
      end

      def show
        respond_with Resource.find(params[:id])
      end

      def create
        respond_with Resource.create(params[:Resource])
      end

      def update
        respond_with Resource.update(params[:id], params[:Resources])
      end

      def destroy
        respond_with Resource.destroy(params[:id])
      end
    end
  end
end