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
class Loop < ApplicationRecord
  belongs_to :looper
  after_create_commit -> {
    puts "update looper.count to #{looper.count + 1}"
    looper.update(count: looper.count + 1)
  }
end
