# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cappuccino_session',
  :secret      => '449c55ab350a66ee874df2e10ace3da71f3e36690a1fde59a60dff94406c7bbf80ab6a52df5f90df2e07847a6511b46c912e8fd248541577b534936b1d0fa3ec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
