class Skill < ActiveRecord::Base
  belongs_to :user
  has_many :projects
  validates :name, :presence => true
  validates :description, :presence => true
  validates :number, :presence => true
end
