require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :email, :uniqueness => true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}
  validates :phone, :length => { :minimum => 10 }
end


