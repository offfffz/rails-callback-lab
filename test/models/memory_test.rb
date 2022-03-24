# == Schema Information
#
# Table name: memories
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class MemoryTest < ActiveSupport::TestCase
  test "#create" do
    Memory.create!
  end
end
