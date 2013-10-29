# == Schema Information
#
# Table name: products
#
#  id            :integer          not null, primary key
#  name          :string(255)
#  about         :text
#  product_type  :text
#  company_price :decimal(, )
#  company_id    :integer
#  created_at    :datetime
#  updated_at    :datetime
#  image         :text
#

class Product < ActiveRecord::Base
  attr_accessible :name, :image, :about, :product_type, :company_price, :company_id

  #do i need belongs_to :company here
  has_many :questions
  has_many :answers, :through => :questions
end
