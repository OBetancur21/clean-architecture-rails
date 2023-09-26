module Application
  module UseCases
    class SaveCustomer
      def initialize(customer_repo)
        @customer_repo = customer_repo
      end

      def execute(params)
        @customer_repo.save(params)
      end
    end
  end
end
