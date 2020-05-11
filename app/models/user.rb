class User < ApplicationRecord
 has_many :forums, dependent: :nullify
end
