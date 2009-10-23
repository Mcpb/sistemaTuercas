# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_SistemaTuercas_session',
  :secret      => '37abc3f36edbba738a62f6f3e58886ecfb77ad93357d8bc15bce3ce1854e67f736e4af21aa16fec4def7db65e0bf086d8417f8ef6df025e3c0699312fbf29ec6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
