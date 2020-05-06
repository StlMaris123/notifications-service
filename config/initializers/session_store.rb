# frozen_string_literal: true

Rails.application.config.session_store :redis_session_store, {
  key: '_be_free_session',
  serializer: :json,
  domain: URI(ENV['HOST']).host,
  redis: {
    expire_after: 1.week,
    key_prefix: 'be_free:session',
    url: ENV['REDIS_SESSIONS_URL']
  }
}
