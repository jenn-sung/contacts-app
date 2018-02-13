class Contact < ApplicationRecord
  # belongs_to :user
  # has_many :contact_groups
  # has_many :groups, through: :contact_groups

  # validates :email, :first_name, :last_name, presence: true
  # validates :email, uniqueness: true
  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  def as_json
    {
      id: id,
      first_name: first_name,
      last_name: last_name,
      email: email, 
      japan_phone_number: japan_phone_number,
      updated_at: day_month_date,
      full_name: full_name,
      middle_name: middle_name,
      bio: bio, 
      # groups: groups.as_json
    }
  end 

  def day_month_date
    updated_at.strftime("%A, %b %d")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def japan_phone_number
    "+86 #{phone_number}"
  end

  def self.all_johns
    johns = []
    contacts = Contacts.all
    contact.each do |contact|
      if contact.first_name.downcase == "john"
        johns << contact
      end
    end
    johns
  end
end


