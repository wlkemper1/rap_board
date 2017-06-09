# == Schema Information
#
# Table name: producers
#
#  id         :integer          not null, primary key
#  picture    :string
#  name       :string
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Producer < ApplicationRecord

  has_many :songs, :dependent => :nullify

end
