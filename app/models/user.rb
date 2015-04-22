# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string
#  email      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  token      :string
#

require 'securerandom'

class User < ActiveRecord::Base
  before_create :set_token
  has_many :articles
  has_many :comments

  private
  def set_token
    return if token.present?
    self.token = generated_token
  end

  def generated_token
    SecureRandom.uuid.gsub(/\-/,'')
  end
end


# curl -i -H "Authorization: Token token=c08a8e3689294ba383c703bdf41a3dac" http://localhost:3000/api/users
