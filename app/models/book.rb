# == Schema Information
#
# Table name: books
#
#  id         :bigint           not null, primary key
#  author     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Book < ApplicationRecord
  before_validation -> { puts "before_validation" }
  after_validation -> { puts "after_validation" }
  before_save -> { puts "before_save" }
  around_save -> (book, block) { puts "around_save"; block.call }
  before_create -> { puts "before_create" }
  around_create -> (book, block) { puts "around_create"; block.call }
  after_create -> { puts "after_create" }
  after_save -> { puts "after_save" }
  after_commit -> { puts "after_commit" }
  after_create_commit -> { puts "after_create_commit" }
  after_update_commit -> { puts "after_update_commit" }

  after_commit -> { puts "after_commit on :update" }, on: :update
  after_commit -> { puts "after_commit on :create" }, on: :create
end
