# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  question   :text
#  product_id :integer
#

class Question < ActiveRecord::Base
  attr_accessible :question, :product_id

  has_many :answers
end
