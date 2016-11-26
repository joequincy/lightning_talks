class User < ApplicationRecord

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid      = auth["uid"]
      user.name     = auth["info"]["name"]
      user.email    = auth["info"]["email"]
      user.nickname = auth["info"]["nickname"]
      user.github   = auth["info"]["urls"]["GitHub"]
    end
  end
end
