module Ahoy
  class Message < ActiveRecord::Base
    self.table_name = "ahoy_messages"

    belongs_to :account, AhoyEmail.belongs_to.merge(polymorphic: true)
  end
end
