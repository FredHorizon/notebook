class Contact < ActiveRecord::Base
  belongs_to :kind # 'pertence a' um único tipo
  has_one :address # 'tem um' único endereço
end
