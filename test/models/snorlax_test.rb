# == Schema Information
#
# Table name: snorlaxes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class SnorlaxTest < ActiveSupport::TestCase
  test "#create" do
    Snorlax.create
  end
end
