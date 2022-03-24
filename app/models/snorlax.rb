# == Schema Information
#
# Table name: snorlaxes
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Snorlax < ApplicationRecord
  after_save -> { sleep 20 }
end
