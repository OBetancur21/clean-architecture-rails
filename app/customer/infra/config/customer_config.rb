module Infra
  module Config
    class CustomerConfig

      def self.find_customer(id)
        Application::UseCases::FindCustomer.new(customer_repo).execute(id)
      end

      def self.save_customer(params)
        Application::UseCases::SaveCustomer.new(customer_repo).execute(params)
      end

      def self.customer_repo
        Infra::Repositories::CustomerRepositoryImp.new
      end
    end
  end
end