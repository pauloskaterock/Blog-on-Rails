# class Article < ApplicationRecord
# end

# class Article < ApplicationRecord
#     validates :title, presence: true
#     validates :body, presence: true, length: { minimum: 10 }
#   end

# class Article < ApplicationRecord
#     has_many :comments
  
#     validates :title, presence: true
#     validates :body, presence: true, length: { minimum: 10 }
#   end
# class Article < ApplicationRecord
#     has_many :comments
  
#     validates :title, presence: true
#     validates :body, presence: true, length: { minimum: 10 }
  
#     VALID_STATUSES = ['public', 'private', 'archived']
  
#     validates :status, inclusion: { in: VALID_STATUSES }
  
#     def archived?
#       status == 'archived'
#     end
#   end

# class Article < ApplicationRecord
#     include Visible
  
#     has_many :comments
  
#     validates :title, presence: true
#     validates :body, presence: true, length: { minimum: 10 }
#   end

class Article < ApplicationRecord
    include Visible
  
    has_many :comments, dependent: :destroy
  
    validates :title, presence: true
    validates :body, presence: true, length: { minimum: 10 }
  end
  
  
  
  
  
