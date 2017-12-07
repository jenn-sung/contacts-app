class Contact < ApplicationRecord

  def as_json
    {
    first_name: first_name,
    last_name: last_name,
    email: email, 
    phone: phone
    }
  end

  def full_name

    
  end

end
