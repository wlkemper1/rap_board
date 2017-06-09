# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  profile_picture        :string
#  likes                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

# direct assocations
      has_many :likes, :dependent => :destroy
      has_many :sent_friend_requests, :class_name => "FriendRequest", :foreign_key => "sender_id", :dependent => :destroy
      has_many :received_friend_requests, :class_name => "FriendRequest", :foreign_key => "recipient_id", :dependent => :destroy

# indirect assocations
      has_many :leaders, :through => :sent_friend_requests, :source => :recipient
      has_many :followers, :through => :received_friend_requests, :source => :sender

end
