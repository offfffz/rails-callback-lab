# == Schema Information
#
# Table name: clocks
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Clock < ApplicationRecord
  before_validation -> { puts "🌟before_validation\n#{as_json.sort.to_h}" }
  after_validation -> { puts "🌟after_validation\n#{as_json.sort.to_h}" }
  before_save -> { puts "🌟before_save\n#{as_json.sort.to_h}" }
  around_save -> (book, block) { puts "🌟around_save\n#{as_json.sort.to_h}"; block.call }
  before_create -> { puts "🌟before_create\n#{as_json.sort.to_h}" }
  around_create -> (book, block) { puts "🌟around_create\n#{as_json.sort.to_h}"; block.call }
  after_create -> { puts "🌟after_create\n#{as_json.sort.to_h}" }
  after_save -> { puts "🌟after_save\n#{as_json.sort.to_h}" }
  after_commit -> { puts "🌟after_commit\n#{as_json.sort.to_h}" }
  after_create_commit -> { puts "🌟after_create_commit\n#{as_json.sort.to_h}" }
  after_update_commit -> { puts "🌟after_update_commit\n#{as_json.sort.to_h}" }

  after_commit -> { puts "🌟after_commit on :update\n#{as_json.sort.to_h}" }, on: :update
  after_commit -> { puts "🌟after_commit on :create\n#{as_json.sort.to_h}" }, on: :create
end
