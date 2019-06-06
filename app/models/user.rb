# == Schema Information
#
# Table name: users
#
#  id                   :bigint(8)        not null, primary key
#  email                :text
#  password_digest      :text
#  name                 :text
#  phone                :integer
#  website              :text
#  employer             :boolean
#  company_size         :text
#  company_type         :text
#  description          :text
#  ABN                  :text
#  image                :text
#  resume               :text
#  notice_period        :text
#  experience           :integer
#  current_title        :text
#  application_id       :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  confirmation_token   :text
#  confirmation_sent_at :datetime
#  confirmed_at         :datetime
#

class User < ApplicationRecord
  has_secure_password
  has_many :jobs
  has_many :applications

  before_save :downcase_email
  before_create :generate_confirmation_instructions

  validates_presence_of :email
  validates_uniqueness_of :email, case_sensitive: false
  validates_format_of :email, with: /@/


def downcase_email
 self.email = self.email.delete(' ').downcase
end

def generate_confirmation_instructions
 self.confirmation_token = SecureRandom.hex(10)
 self.confirmation_sent_at = Time.now.utc
end
end
