# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ruby-idioms_session',
  :secret      => '92075e9989df494473e69a249832a7f21a6ad684e54802b63b78f11a43092c36854cebf802378dcce97e61c5ddb86120a2e757f2f021b9bb3304cf5cfd817804'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
