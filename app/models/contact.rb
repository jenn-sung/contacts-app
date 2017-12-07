class Contact < ApplicationRecord

  def as_json
    {
      first_name: first_name,
      last_name: last_name,
      email: email, 
      phone_number: phone_number,
      updated_at: day_month_date
    }
  end

  def day_month_date
    updated_at.strftime("%A, %b %d")
  end

  def full_name
  end
end
