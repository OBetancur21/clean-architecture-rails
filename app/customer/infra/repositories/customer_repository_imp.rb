module Infra
  module Repositories
    class CustomerRepositoryImp
      include Domain::Repositories::CustomerRepository

      def find(id)
        customer = model.find(id)
        convert_to_entity(customer)
      end

      def save(params)
        customer = model.new(params)
        if customer.save
          convert_to_entity(customer)
        end
      end

      private

      def model
        @model ||= Infra::Models::Customer
      end

      def convert_to_entity(customer)
        Domain::Entities::Customer.new(customer.id, customer.name, customer.phone)
      end
    end
  end
end
