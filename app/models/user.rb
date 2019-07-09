class User < ApplicationRecord
  has_many :children, :class_name => "User"
  belongs_to :father, :class_name => "User", :foreign_key => 'father_id', optional: true
  belongs_to :mother, :class_name => "User", :foreign_key => 'mother_id', optional: true

  def children
    User.where('father_id=? or mother_id=?', id, id)
  end
end
