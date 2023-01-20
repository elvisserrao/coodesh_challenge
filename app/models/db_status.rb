# frozen_string_literal: true

class DbStatus < ApplicationRecord
  def self.last_cron_execution_time
    first.updated_at.to_s if exists?
  end

  def self.can_read?
    sql = 'SELECT * FROM db_statuses'
    ActiveRecord::Base.connection.execute(sql)
    true
  rescue ActiveRecord::StatementInvalid
    false
  end

  def self.can_write?
    obj = DbStatus.new
    begin
      result = obj.save
    rescue ActiveRecord::StatementInvalid
      result = false
    end
    obj.destroy if result

    result
  end
end
