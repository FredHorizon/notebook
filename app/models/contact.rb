class Contact < ActiveRecord::Base
  belongs_to :kind # 'pertence a' um único tipo
  has_one :address # 'tem um' único endereço

  accepts_nested_attributes_for :address
end
