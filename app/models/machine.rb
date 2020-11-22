class Machine < ApplicationRecor
  with_options presence: true do
    validates :name
    validates :detail
    validates :image
  end
end
