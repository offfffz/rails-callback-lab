# == Schema Information
#
# Table name: memories
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Memory < ApplicationRecord
  before_validation -> { puts "📝before_validation -> persisted?: #{persisted?}, id: #{id}" }
  after_validation -> { puts "📝after_validation -> persisted?: #{persisted?}, id: #{id}" }
  before_save -> { puts "📝before_save -> persisted?: #{persisted?}, id: #{id}" }
  around_save -> (book, block) { puts "📝around_save -> persisted?: #{persisted?}, id: #{id}"; block.call }
  before_create -> { puts "📝before_create -> persisted?: #{persisted?}, id: #{id}" }
  around_create -> (book, block) { puts "📝around_create -> persisted?: #{persisted?}, id: #{id}"; block.call }
  after_create -> { puts "📝after_create -> persisted?: #{persisted?}, id: #{id}" }
  after_save -> { puts "📝after_save -> persisted?: #{persisted?}, id: #{id}" }
  after_commit -> { puts "📝after_commit -> persisted?: #{persisted?}, id: #{id}" }
  after_create_commit -> { puts "📝after_create_commit -> persisted?: #{persisted?}, id: #{id}" }
  after_update_commit -> { puts "📝after_update_commit -> persisted?: #{persisted?}, id: #{id}" }

  after_commit -> { puts "📝after_commit on :update -> persisted?: #{persisted?}, id: #{id}" }, on: :update
  after_commit -> { puts "📝after_commit on :create -> persisted?: #{persisted?}, id: #{id}" }, on: :create
end
