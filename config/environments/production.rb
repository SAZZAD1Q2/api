# Disable code reloading between requests.
config.enable_reloading = false

# Eager load code on boot for better performance.
config.eager_load = true

# Consider all requests non-local to enable full error reports and enable caching.
config.consider_all_requests_local = false
config.action_controller.perform_caching = true

# Require the master key for decrypting credentials (and other encrypted files).
# Uncomment the line below if you are using encrypted credentials.
# config.require_master_key = true

# Do not serve static files from `public/` and rely on NGINX/Apache to do so.
# config.public_file_server.enabled = false

# Do not compile assets if a precompiled asset is missing.
config.assets.compile = false

# Force SSL for all access to the app.
config.force_ssl = true

# Log to STDOUT by default.
config.logger = ActiveSupport::Logger.new(STDOUT)
  .tap { |logger| logger.formatter = ::Logger::Formatter.new }
  .then { |logger| ActiveSupport::TaggedLogging.new(logger) }

# Set log tags for request ID.
config.log_tags = [:request_id]

# Set the log level (default to "info").
config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

# Use a different cache store in production (default is :local).
# Uncomment the line below if you want to use a different cache store.
# config.cache_store = :mem_cache_store

# Enable DNS rebinding protection and other `Host` header attacks.
# You can specify allowed hosts to prevent DNS rebinding attacks.
# config.hosts = [
#   "example.com",
#   /.*\.example\.com/
# ]
