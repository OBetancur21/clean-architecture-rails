module Domain
  module Repositories
    module CustomerRepository
      def find(id)
        raise NotImplementedError, 'You must implement the find method'
      end

      def save(params)
        raise NotImplementedError, 'You must implement the find method'
      end
    end
  end
end
