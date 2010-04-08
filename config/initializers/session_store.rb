# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_palsofa_session',
  :secret      => 'e4263e684e7450ec4744bde37c164cdc638a5f03dc94c0262d1c2d223a2dacb7a92537a0cc7b1289c8dc3425551d2c178f315dc1511387505966c4bbc300d64b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
