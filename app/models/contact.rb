class Contact < ApplicationRecord

  def as_json
    {
      first_name: first_name,
      last_name: last_name,
      email: email, 
      japan_phone_number: japan_phone_number,
      updated_at: day_month_date,
      full_name: full_name,
      middle_name: middle_name,
      bio: bio
    }
  end 

  def day_month_date
    updated_at.strftime("%A, %b %d")
  end

  def full_name
    return "#{first_name} #{last}"
  end

  def japan_phone_number
    return "+86 #{phone_number}"
  end

  def self.all_johns
    johns = []
    contacts = Contacts.all
    contact.each do |contact|
      if contact.first_name.downcase == "john"
        johns <<contact
      end
    end
    johns
  end
end


