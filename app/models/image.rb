class Image < ActiveRecord::Base
  belongs_to :utilisateur
  #delegate :email, to: :utilisateur, prefix: true
end
