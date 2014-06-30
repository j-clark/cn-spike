class User < ActiveRecord::Base
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
