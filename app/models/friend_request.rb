# == Schema Information
#
# Table name: friend_requests
#
#  id           :integer          not null, primary key
#  sender_id    :integer
#  recipient_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class FriendRequest < ApplicationRecord

  belongs_to :sender, :class_name => "User"
  belongs_to :recipient, :class_name => "User"

end
