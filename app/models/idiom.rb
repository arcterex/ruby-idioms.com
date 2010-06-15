class Idiom < ActiveRecord::Base
  #belongs_to :user
  #belongs_to :category
  validates_presence_of :idiom, :on => :create, :message => "can't be blank"
  #validates_presence_of :user_id, :on => :create, :message => "must be logged in"

end
