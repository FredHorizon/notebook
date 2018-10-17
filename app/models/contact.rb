class Contact < ActiveRecord::Base
  belongs_to :kind # 'pertence a' um único tipo
  has_one :address # 'tem um' único endereço
  has_many :phones # possui muitos telefones. Obs: nesse caso, tem que ser no plural mesmo, senão a relação não é identificada.

  accepts_nested_attributes_for :address
end
