class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  # devise , :registerable,
         # :recoverable, :rememberable, :trackable, :validatable,
  devise :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :trackable,
    # :validatable,
    :omniauthable, omniauth_providers: [:facebook]

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
