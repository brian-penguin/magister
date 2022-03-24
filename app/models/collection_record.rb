# frozen_string_literal: true

# == Schema Information
#
# Table name: collection_records
#
#  id            :bigint           not null, primary key
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  collection_id :bigint           not null
#  record_id     :bigint           not null
#
# Indexes
#
#  index_collection_records_on_collection_id  (collection_id)
#  index_collection_records_on_record_id      (record_id)
#
class CollectionRecord < ApplicationRecord
  belongs_to :collection
  belongs_to :record

  validates :collection_id, :record_id, presence: true
end
