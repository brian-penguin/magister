# == Schema Information
#
# Table name: organization_users
#
#  id              :bigint           not null, primary key
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  organization_id :bigint
#  user_id         :bigint
#
# Indexes
#
#  index_organization_users_on_organization_id  (organization_id)
#  index_organization_users_on_user_id          (user_id)
#
require 'rails_helper'

RSpec.describe OrganizationUser, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
