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
require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "#create" do
    Book.create(name: 'Test Book', author: 'Test Author')
  end

  test "#update" do
    Book.insert({name: 'Test Book', author: 'Test Author'})
    puts "---inserted book without callback---"
    Book.last.update(name: 'Another Name')
  end
end
