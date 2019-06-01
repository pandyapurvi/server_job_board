# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  email           :text
#  password_digest :text
#  name            :text
#  phone           :integer
#  website         :text
#  employer        :boolean
#  company_size    :text
#  company_type    :text
#  description     :text
#  ABN             :text
#  image           :text
#  resume          :text
#  notice_period   :text
#  experience      :integer
#  current_title   :text
#  application_id  :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  has_many :jobs
  has_many :applications
end
