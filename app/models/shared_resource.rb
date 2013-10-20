class SharedResource < ActiveRecord::Base
  belongs_to :shares, polymorphic: true
end
