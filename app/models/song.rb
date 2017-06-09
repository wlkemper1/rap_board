# == Schema Information
#
# Table name: songs
#
#  id          :integer          not null, primary key
#  rapper_id   :integer
#  producer_id :integer
#  audio_link  :string
#  year        :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Song < ApplicationRecord

  # validates :name, :login, :email, presence: true

  has_many :likes, :dependent => :destroy
  belongs_to :rapper, :class_name => "Rapper", :foreign_key => "rapper_id"
  belongs_to :producer

  has_many :users, :through => :likes, :source => :user

end
