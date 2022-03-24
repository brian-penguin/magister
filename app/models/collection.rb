# frozen_string_literal: true

# == Schema Information
#
# Table name: collections
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_collections_on_user_id  (user_id)
#
class Collection < ApplicationRecord
  belongs_to :user

  has_many :collection_records
  has_many :records, through: :collection_records

  validates :user_id, presence: true
end
