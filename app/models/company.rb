# == Schema Information
#
# Table name: companies
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  picture         :text
#  info            :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class Company < ActiveRecord::Base
  attr_accessible :name, :password, :password_digest, :picture, :info

  has_many :products
end
