# == Schema Information
#
# Table name: jobs
#
#  id           :bigint(8)        not null, primary key
#  title        :text
#  post_date    :date
#  description  :text
#  level        :text
#  company_type :text
#  salary       :integer
#  job_type     :text
#  close_date   :date
#  city         :text
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Job < ApplicationRecord
  belongs_to :user, :optional => true
  has_many :applications
end
