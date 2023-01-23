# frozen_string_literal: true

namespace :api_key do
  desc 'Generate a key to use as api authentication'
  task generate: :environment do
    puts "Set API_KEY env var with this key: #{SecureRandom.base64(48)}"
  end
end
