# README

## Setup
- bin/rails db:setup

## Usage
- bin/rails test -v test/models/book_test.rb
  > Learn the order of callbacks in active record
- bin/rails test -v test/models/memory_test.rb
  > Learn when the object got write into the database
- bin/rails test -v test/models/snorlax_test.rb
  > Demonstrate blocking synchronous callbacks
- bin/rails test -v test/models/loop_test.rb
  > Demonstrate infinite loop callbacks
- bin/rails test -v test/models/clock_test.rb
  > Learn value availability
