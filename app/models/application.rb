# == Schema Information
#
# Table name: applications
#
#  id               :bigint(8)        not null, primary key
#  user_id          :integer
#  job_id           :integer
#  application_date :date
#  resume           :text
#  cover_letter     :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Application < ApplicationRecord
  belongs_to :job, :optional => true
  has_many :users
end
