# == Schema Information
#
# Table name: tasks
#
#  id           :integer         not null, primary key
#  DateRequired :datetime
#  Title        :string(255)
#  Days         :float
#  Notes        :text
#  Assigned     :string(255)
#  Type         :string(255)
#  Team         :string(255)
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class Task < ActiveRecord::Base
  attr_accessible :DateRequired, :Days, :Team, :Title, :Assigned, :Notes, :Type
  validates :Title, :Notes, :Team , :Type, presence: true
  


end
