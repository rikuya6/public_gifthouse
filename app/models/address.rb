# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  order_id   :integer          not null
#  dest       :string           not null
#  zipcode    :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Address < ActiveRecord::Base
end
