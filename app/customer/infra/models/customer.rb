module Infra
  module Models
    class Customer < ApplicationRecord
      self.table_name = 'customers'
    end
  end
end

