class Contact < ActiveRecord::Base
  belongs_to :kind # 'pertence a' um único tipo
  has_one :address # 'tem um' único endereço
  has_many :phones # possui muitos telefones. Obs: nesse caso, tem que ser no plural mesmo, senão a relação não é identificada.

  accepts_nested_attributes_for :address
  accepts_nested_attributes_for :phones, reject_if: :all_blank, allow_destroy: true # parâmetros da gem cocoon

  validates :name, presence: true, length: { minimum: 10 }
  validates :email, presence: true
end
