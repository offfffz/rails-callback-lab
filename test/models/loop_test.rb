# == Schema Information
#
# Table name: loops
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  looper_id  :bigint           not null
#
# Indexes
#
#  index_loops_on_looper_id  (looper_id)
#
# Foreign Keys
#
#  fk_rails_...  (looper_id => loopers.id)
#
require "test_helper"

class LoopTest < ActiveSupport::TestCase
  test "looping" do
    looper = Looper.create(name: "Someone")
    looper.make_loop
  end
end
