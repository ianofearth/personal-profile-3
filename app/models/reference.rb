class Reference < ActiveRecord::Base
  belongs_to :user

  validates :name, :presence => true
  validates :phone, :presence => true
  validates :email, :presence => true
  validates :body, :presence => true
  
end
