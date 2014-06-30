class User < ActiveRecord::Base
  devise :omniauthable, omniauth_providers: [:facebook]

  class << self
    def create_with_omniauth(auth)
      create(
        provider: auth['provider'],
        uid: auth['uid'],
        name: auth['info']['name']
      )
    end
  end
end
