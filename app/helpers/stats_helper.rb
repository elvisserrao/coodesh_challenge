# frozen_string_literal: true

module StatsHelper
  def uptime
    distance_of_time_in_words_to_now(CoodeshBackendChallenge::BOOTED_AT)
  end

  def memory_usage(unit: :mb)
    mem = `ps -o rss= -p #{$PROCESS_ID}`.to_f
    units = { kb: mem, mb: mem / 1024, gb: (mem / 1024) / 1024 }
    "#{format('%.2f', units[unit])}#{unit.to_s.upcase}"
  end
end
