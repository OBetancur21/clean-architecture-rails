module Web
  module Controllers
    class CustomersController < ApplicationController
      def show
        customer = Infra::Config::CustomerConfig.find_customer(params[:id])
        render json: customer
      end

      def create
        customer = Infra::Config::CustomerConfig.save_customer(customer_params)
        render json: customer
      end

      private

      def customer_params
        params.require(:customer).permit(:name, :phone)
      end
    end
  end
end