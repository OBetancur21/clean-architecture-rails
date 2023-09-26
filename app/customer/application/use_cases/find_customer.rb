module Application
  module UseCases
    class FindCustomer
      def initialize(customer_repo)
        @customer_repo = customer_repo
      end

      def execute(id)
        @customer_repo.find(id)
      end
    end
  end
end