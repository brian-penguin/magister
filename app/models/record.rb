# frozen_string_literal: true

# == Schema Information
#
# Table name: records
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_records_on_user_id  (user_id)
#
class Record < ApplicationRecord
  belongs_to :user

  has_many :collection_records
  has_many :collections, through: :collection_records

  validates :user_id, presence: true
end
