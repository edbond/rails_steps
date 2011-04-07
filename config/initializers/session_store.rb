# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_steps_session',
  :secret      => 'cbc746d325c371007f792a99b8183af481a78985619bf2412f96a8cacb05602223d853cc8a9e8d4d65583fb7fb4efd4daeb4b0e80d0a5dd5c56a892d3339643a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
