# == Schema Information
#
# Table name: loopers
#
#  id         :bigint           not null, primary key
#  count      :decimal(, )      default(0.0), not null
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Looper < ApplicationRecord
  has_many :loops
  after_update_commit -> {
    puts "create loop"
    loops.create!
  }

  def make_loop
    loops.create!
  end
end
