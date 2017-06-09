# == Schema Information
#
# Table name: rappers
#
#  id         :integer          not null, primary key
#  name       :string
#  picture    :string
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Rapper < ApplicationRecord

  has_many :songs_as_main, :class_name => "Song", :dependent => :destroy


end
