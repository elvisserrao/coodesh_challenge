require 'rails_helper'

RSpec.describe DbStatus, type: :model do
  describe '#last_cron_execution_time' do
    it 'Should return the last execution time as string' do
      obj = described_class.create

      expect(described_class.last_cron_execution_time).to be_instance_of(String)
    end

    it "Should return null if cron has never been executed" do
      expect(described_class.last_cron_execution_time).to be_nil
    end
  end
end
