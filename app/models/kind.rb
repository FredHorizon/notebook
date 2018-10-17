class Kind < ActiveRecord::Base
    has_many :contacts # um tipo possui muitos contatos
end
