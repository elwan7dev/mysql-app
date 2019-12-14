class Mokatba < ApplicationRecord
    has_one_attached :attachedFile
    
    validates :title, presence: true
    validates :attachedFile, presence: true

end
