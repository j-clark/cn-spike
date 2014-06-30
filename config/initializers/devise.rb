Devise.setup do |config|
  config.secret_key = 'a2dbe1e01eb00ebd93350a02729e9733670462e6099d0c78bcad0c1876ff8e313434be789c3d5ae466e95894b0654b0c1650443bbcbb3fac824fe308325a8210'

  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'

  # config.mailer = 'Devise::Mailer'

  require 'devise/orm/active_record'

  # config.authentication_keys = [ :email ]

  # config.request_keys = []

  config.case_insensitive_keys = [ :email ]
  config.strip_whitespace_keys = [ :email ]

  # config.params_authenticatable = true

  # config.http_authenticatable = false

  # config.http_authenticatable_on_xhr = true

  # config.http_authentication_realm = 'Application'

  # config.paranoid = true

  config.skip_session_storage = []

  # config.clean_up_csrf_token_on_authentication = true

  config.stretches = Rails.env.test? ? 1 : 10

  # config.pepper = 'e2a9c74bc91299238cb78d4e4420f26ecdda7b8b1b5b7728021ef5035aadff3d7ade718bc660d08c76a2a028e7d814254a81bfe72b2b67d2a75f25cc984971bd'

  # config.allow_unconfirmed_access_for = 2.days

  config.confirm_within = 3.days

  config.reconfirmable = true

  # config.confirmation_keys = [ :email ]

  # config.remember_for = 2.weeks

  # config.extend_remember_period = false

  config.rememberable_options = { secure: true }

  config.password_length = 8..128

  # config.email_regexp = /\A[^@]+@[^@]+\z/

  # config.timeout_in = 30.minutes

  # config.expire_auth_token_on_timeout = false

  # config.lock_strategy = :failed_attempts

  # config.unlock_keys = [ :email ]

  # config.unlock_strategy = :both

  # config.maximum_attempts = 20

  # config.unlock_in = 1.hour

  # config.last_attempt_warning = false

  # config.reset_password_keys = [ :email ]

  config.reset_password_within = 6.hours

  # config.encryptor = :sha512

  # config.scoped_views = false

  # config.default_scope = :user

  # Set this configuration to false if you want /users/sign_out to sign out
  # only the current scope. By default, Devise signs out all scopes.
  # config.sign_out_all_scopes = true

  # ==> Navigation configuration
  # Lists the formats that should be treated as navigational. Formats like
  # :html, should redirect to the sign in page when the user does not have
  # access, but formats like :xml or :json, should return 401.
  #
  # If you have any extra navigational formats, like :iphone or :mobile, you
  # should add them to the navigational formats lists.
  #
  # The "*/*" below is required to match Internet Explorer requests.
  # config.navigational_formats = ['*/*', :html]

  # The default HTTP method used to sign out a resource. Default is :delete.
  config.sign_out_via = :delete

  # ==> OmniAuth
  config.omniauth :facebook, ENV['FACEBOOK_APP_ID'], ENV['FACEBOOK_APP_SECRET']

  # ==> Warden configuration
  # If you want to use other strategies, that are not supported by Devise, or
  # change the failure app, you can configure them inside the config.warden block.
  #
  # config.warden do |manager|
  #   manager.intercept_401 = false
  #   manager.default_strategies(scope: :user).unshift :some_external_strategy
  # end

  # ==> Mountable engine configurations
  # When using Devise inside an engine, let's call it `MyEngine`, and this engine
  # is mountable, there are some extra configurations to be taken into account.
  # The following options are available, assuming the engine is mounted as:
  #
  #     mount MyEngine, at: '/my_engine'
  #
  # The router that invoked `devise_for`, in the example above, would be:
  # config.router_name = :my_engine
  #
  # When using omniauth, Devise cannot automatically set Omniauth path,
  # so you need to do it manually. For the users scope, it would be:
  # config.omniauth_path_prefix = '/my_engine/users/auth'
end
