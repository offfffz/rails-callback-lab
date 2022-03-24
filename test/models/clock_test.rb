# == Schema Information
#
# Table name: clocks
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ClockTest < ActiveSupport::TestCase
  test "#create" do
    Clock.create!
  end

  test "#update" do
    Clock.insert!({})
    Clock.last.update!(updated_at: DateTime.now + 1.day)
  end
end
